@echo off
SETLOCAL

TITLE qTest Automation Agent 1.0.0

if not defined QA_AGENT_JAVA_HOME set QA_AGENT_JAVA_HOME=%JAVA_HOME%
if not defined SERVER_DIR set SERVER_DIR=%cd%
if not defined SERVER_MEM set SERVER_MEM=512
if not defined SERVER_MAX_MEM set SERVER_MAX_MEM=1024
if not defined SERVER_MAX_PERM_GEN set SERVER_MAX_PERM_GEN=256
if not defined SERVER_MIN_PERM_GEN set SERVER_MIN_PERM_GEN=128
if not defined AGENT_SERVER_PORT set AGENT_SERVER_PORT=6789
if not defined AGENT_SERVER_HOST set AGENT_SERVER_HOST=localhost
if not defined QA_AGENT_JAVA_HOME set QA_AGENT_JAVA_HOME=%JAVA_HOME%
if not defined JAVA_CMD set JAVA_CMD=%QA_AGENT_JAVA_HOME%\bin\java.exe
if not defined QA_AGENT_SYS_PROPERTIES set QA_AGENT_SYS_PROPERTIES=

set JAVA_HOME=%QA_AGENT_JAVA_HOME%
if not defined GC_LOG set GC_LOG=""
if not defined JVM_DEBUG set JVM_DEBUG=""

if not exist "%JAVA_CMD%" (
  echo JAVA_HOME points to an invalid Java installation (no java.exe found in "%JAVA_HOME%"^). Exiting...
  goto:eof
)
"%JAVA_CMD%" -version 2>&1 | find "64-Bit" >nul:

if errorlevel 1 goto x86
set EXECUTABLE=%SERVER_DIR%\bin\qtest-automation-service-x64.exe
set SERVICE_ID=qtest-automation-service-x64
set ARCH=64-bit
goto checkExe

:x86
set EXECUTABLE=%SERVER_DIR%\bin\qtest-automation-service-x86.exe
set SERVICE_ID=qtest-automation-service-x86
set ARCH=32-bit

:checkExe
if EXIST "%EXECUTABLE%" goto okExe
echo qtest-automation-service-(x86|x64).exe was not found...

:okExe
if "%LOG_DIR%" == "" set LOG_DIR=%SERVER_DIR%\service-logs

if "x%1x" == "xx" goto displayUsage
set SERVICE_CMD=%1
shift
if "x%1x" == "xx" goto checkServiceCmd
set SERVICE_ID=%1

:checkServiceCmd
set LOG_OPTS=--LogPath "%LOG_DIR%" --LogPrefix "%SERVICE_ID%" --StdError auto --StdOutput auto
if /i %SERVICE_CMD% == install goto doInstall
if /i %SERVICE_CMD% == remove goto doRemove
if /i %SERVICE_CMD% == start goto doStart
if /i %SERVICE_CMD% == stop goto doStop
if /i %SERVICE_CMD% == manager goto doManagment
echo Unknown option "%SERVICE_CMD%"

:displayUsage
echo.
echo Usage: service.bat install^|remove^|start^|stop^|manager [SERVICE_ID]
goto :eof

:doStart
"%EXECUTABLE%" //ES//%SERVICE_ID% %LOG_OPTS%
if not errorlevel 1 goto started
echo Failed starting '%SERVICE_ID%' service
goto :eof
:started
echo The service '%SERVICE_ID%' has been started
goto :eof

:doStop
"%EXECUTABLE%" //SS//%SERVICE_ID% %LOG_OPTS%
if not errorlevel 1 goto stopped
echo Failed stopping '%SERVICE_ID%' service
goto :eof
:stopped
echo The service '%SERVICE_ID%' has been stopped
goto :eof

:doManagment
set EXECUTABLE_MGR=%SERVER_DIR%\bin\qtest-automation-service-mgr.exe
"%EXECUTABLE_MGR%" //ES//%SERVICE_ID%
if not errorlevel 1 goto managed
echo Failed starting service manager for '%SERVICE_ID%'
goto :eof
:managed
echo Succesfully started service manager for '%SERVICE_ID%'
goto :eof

:doRemove
rem Remove the service
"%EXECUTABLE%" //DS//%SERVICE_ID% %LOG_OPTS%
if not errorlevel 1 goto removed
echo Failed removing '%SERVICE_ID%' service
goto :eof
:removed
echo The service '%SERVICE_ID%' has been removed
goto :eof

:doInstall
echo Installing service        : "%SERVICE_ID%"
echo Using JAVA_HOME (%ARCH%)  : "%JAVA_HOME%"

rem Check JVM server dll first
set JVM_DLL=%JAVA_HOME%\jre\bin\server\jvm.dll
if exist "%JVM_DLL%" goto foundJVM

rem Check 'server' JRE (JRE installed on Windows Server)
set JVM_DLL=%JAVA_HOME%\bin\server\jvm.dll
if exist "%JVM_DLL%" goto foundJVM

rem Fallback to 'client' JRE
set JVM_DLL=%JAVA_HOME%\bin\client\jvm.dll

if exist "%JVM_DLL%" (
echo Warning: JAVA_HOME points to a JRE and not JDK installation; a client (not a server^) JVM will be used...
) else (
echo JAVA_HOME points to an invalid Java installation (no jvm.dll found in "%JAVA_HOME%"^). Exiting...
goto :eof
)

:foundJVM
set QAA_PARAMS=-Dagent.home="%SERVER_DIR%";-Dagent.java.to.use="%JAVA_CMD%";-Dagent.server.mem="%SERVER_MEM%";-Dagent.server.maxmem="%SERVER_MAX_MEM%";-Dagent.server.permgen="%SERVER_MIN_PERM_GEN%";-Dagent.server.maxpermgen="%SERVER_MAX_PERM_GEN%";-Dagent.server.port="%AGENT_SERVER_PORT%";-Dagent.server.host="%AGENT_SERVER_HOST%";-DJVM_DEBUG="%JVM_DEBUG%";-DGC_LOG="%GC_LOG%"
set QAA_STOP_PARAMS=-Dagent.home="%SERVER_ID%"
set QAA_CLASSPATH=%SERVER_DIR%\lib\agent.jar
set QAA_VERSION="1.0.0-release"

set JVM_SS=256

if "%QAA_START_TYPE%" == "" set QAA_START_TYPE=manual
if "%QAA_STOP_TIMEOUT%" == "" set QAA_STOP_TIMEOUT=0

"%EXECUTABLE%" //IS//%SERVICE_ID% --Startup %QAA_START_TYPE% --StopTimeout %QAA_STOP_TIMEOUT% --StartClass com.qasymphony.qtest.automation.agent.server.util.QAutomationLauncher --StopClass com.qasymphony.qtest.automation.agent.server.util.QAutomationLauncher --StartMethod main --StopMethod stop --Classpath "%QAA_CLASSPATH%" --JvmSs %JVM_SS% ++JvmOptions %QAA_PARAMS% %LOG_OPTS% --PidFile "%SERVICE_ID%.pid" --DisplayName "qTest Automation Agent" --Description "qTest Automation Agent %QAA_VERSION% Windows Service - http://www.qasymphony.com" --Jvm "%JVM_DLL%" --StartMode jvm --StopMode jvm --StartPath "%SERVER_DIR%"

if not errorlevel 1 goto installed
echo Failed installing '%SERVICE_ID%' service
goto :eof

:installed
echo The service '%SERVICE_ID%' has been installed.
goto :eof

ENDLOCAL