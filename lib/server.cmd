@echo off

if not defined QA_AGENT_JAVA_HOME set QA_AGENT_JAVA_HOME=%JAVA_HOME%
if not defined SERVER_DIR set SERVER_DIR=%cd%
if not defined SERVER_MEM set SERVER_MEM=512M
if not defined SERVER_MAX_MEM set SERVER_MAX_MEM=1024M
if not defined SERVER_MAX_PERM_GEN set SERVER_MAX_PERM_GEN=256M
if not defined SERVER_MIN_PERM_GEN set SERVER_MIN_PERM_GEN=128M
if not defined AGENT_SERVER_PORT set AGENT_SERVER_PORT=6789
if not defined AGENT_SERVER_HOST set AGENT_SERVER_HOST=localhost
if not defined JAVA_CMD set JAVA_CMD=%QA_AGENT_JAVA_HOME%\bin\java.exe
if not defined QA_AGENT_SYS_PROPERTIES set QA_AGENT_SYS_PROPERTIES=

set JAVA_HOME=%QA_AGENT_JAVA_HOME%

if defined GC_LOG (
  set GC_LOG=-verbose:gc -Xloggc:qa-agent-gc.log -XX:+PrintGCTimeStamps -XX:+PrintTenuringDistribution -XX:+PrintGCDetails -XX:+PrintGC
) else (
  set GC_LOG=
)

if defined JVM_DEBUG (
  set JVM_DEBUG=-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=9999
) else (
  set JVM_DEBUG=
)

if not exist "%SERVER_DIR%\tmp" (
  mkdir "%SERVER_DIR%\tmp"
)

if not exist "%JAVA_CMD%" set JAVA_CMD=java.exe

javac.exe 2>NUL
if ERRORLEVEL 3 goto :jre
set JVM_OPTS=-server
goto :done

:jre
set JVM_OPTS=-client

:done
"%JAVA_CMD%" %JVM_OPTS% -Xms%SERVER_MEM% -Xmx%SERVER_MAX_MEM% -XX:PermSize=%SERVER_MIN_PERM_GEN% -XX:MaxPermSize=%SERVER_MAX_PERM_GEN% %JVM_DEBUG% %GC_LOG% %QA_AGENT_SYS_PROPERTIES% -Duser.language=en -DJAVA_SYS_MON_TEMP_DIR="%SERVER_DIR%\tmp" -Dorg.eclipse.jetty.server.Request.maxFormContentSize=30000000 -Duser.country=US -Dagent.config.dir="%SERVER_DIR%\config" -Dagent.server.port=%AGENT_SERVER_PORT% -Dagent.server.host="%AGENT_SERVER_HOST%" -jar "%SERVER_DIR%\lib\agent.jar"
