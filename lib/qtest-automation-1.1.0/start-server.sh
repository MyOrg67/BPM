#!/bin/bash

MANUAL_SETTING=${MANUAL_SETTING:-"N"}

if [ "$MANUAL_SETTING" == "N" ]; then
  if [ -f /etc/default/qtest-automation ]; then
    echo "using default settings from /etc/default/qtest-automation"
    . /etc/default/qtest-automation
  fi
fi

CWD=`dirname "$0"`
SERVER_DIR=`(cd "$CWD" && pwd)`

[ ! -z $SERVER_MEM ] || SERVER_MEM="512M"
[ ! -z $SERVER_MAX_MEM ] || SERVER_MAX_MEM="1024M"
[ ! -z $SERVER_MAX_PERM_GEN ] || SERVER_MAX_PERM_GEN="256M"
[ ! -z $SERVER_MIN_PERM_GEN ] || SERVER_MIN_PERM_GEN="128M"
[ ! -z $AGENT_SERVER_PORT ] || AGENT_SERVER_PORT="6789"
[ ! -z $AGENT_SERVER_HOST ] || AGENT_SERVER_HOST="localhost"
[ ! -z "$SERVER_WORK_DIR" ] || SERVER_WORK_DIR="$SERVER_DIR"

if [ -d /var/log/qtest-automation ]; then
  LOG_FILE=/var/log/qtest-automation/agent-server.log
else
  LOG_FILE=agent-server.log
fi

if [ "$PID_FILE" ]; then
  echo "Overriding PID_FILE with $PID_FILE"
elif [ -d /var/run/qtest-automation ]; then
  PID_FILE=/var/run/qtest-automation/agent-server.pid
else
  PID_FILE=agent-server.pid
fi

if [ -d /etc/qtest-automation ]; then
  QA_CONFIG_DIR=/etc/qtest-automation
else
  QA_CONFIG_DIR=$SERVER_DIR/config
fi

if [ "$JVM_DEBUG" != "" ]; then
  JVM_DEBUG="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=9999"
else
  JVM_DEBUG=""
fi

if [ "$GC_LOG" != "" ]; then
  GC_LOG="-verbose:gc -Xloggc:qa-agent-gc.log -XX:+PrintGCTimeStamps -XX:+PrintTenuringDistribution -XX:+PrintGCDetails -XX:+PrintGC"
else
  GC_LOG=""
fi

if [ ! -z $SERVER_LISTEN_HOST ]; then
  QA_SERVER_SYS_PROPERTIES="$QA_SERVER_SYS_PROPERTIES -Dagent.server.host=$SERVER_LISTEN_HOST"
fi
SERVER_STARTUP_ARGS+=("-server")
SERVER_STARTUP_ARGS+=("-Xms$SERVER_MEM -Xmx$SERVER_MAX_MEM -XX:PermSize=$SERVER_MIN_PERM_GEN -XX:MaxPermSize=$SERVER_MAX_PERM_GEN")
SERVER_STARTUP_ARGS+=("$JVM_DEBUG $GC_LOG $QA_SERVER_SYS_PROPERTIES")
SERVER_STARTUP_ARGS+=("-Duser.language=en -Dorg.eclipse.jetty.server.Request.maxFormContentSize=30000000")
SERVER_STARTUP_ARGS+=("-Duser.country=US -Dagent.config.dir=$QA_CONFIG_DIR")
SERVER_STARTUP_ARGS+=("-Dagent.server.port=$AGENT_SERVER_PORT")
SERVER_STARTUP_ARGS+=("-Dagent.server.host=$AGENT_SERVER_HOST")

if [ "$TMPDIR" != "" ]; then
  SERVER_STARTUP_ARGS+=("-Djava.io.tmpdir=$TMPDIR")
fi
CMD="$JAVA_HOME/bin/java ${SERVER_STARTUP_ARGS[@]} -jar $SERVER_DIR/lib/agent.jar"

echo "Starting qTest Automation Agent with command: $CMD" >> $LOG_FILE
echo "Starting qTest Automation Agent in directory: $SERVER_WORK_DIR" >> $LOG_FILE
cd "$SERVER_WORK_DIR"

if [ "$JAVA_HOME" == "" ]; then
  echo "Please set JAVA_HOME to proceed."
  exit 1
fi

if [ "$DAEMON" == "Y" ]; then
  eval "nohup $CMD >>$LOG_FILE 2>&1 &"
  echo $! > $PID_FILE
else
  eval "$CMD"
fi
