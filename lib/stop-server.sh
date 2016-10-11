#!/bin/bash

if [ -f /etc/default/qtest-automation ]; then
  . /etc/default/qtest-automation
fi

CWD=`dirname "$0"`
SERVER_DIR=`(cd "$CWD" && pwd)`

if [ "$PID_FILE" ]; then
  echo "Overriding PID_FILE with $PID_FILE"
elif [ -d /var/run/qtest-automation ]; then
  PID_FILE=/var/run/qtest-automation/agent-server.pid
else
  PID_FILE="$SERVER_DIR/agent-server.pid"
fi

if [ -f "$PID_FILE" ]; then
  cat $PID_FILE | xargs kill
else
  echo "Unable to stop qTest Automation Agent that was started as a foreground process. Use CTRL+C in the console of the process to stop the instance."
fi