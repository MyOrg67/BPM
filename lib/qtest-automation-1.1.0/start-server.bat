IF "%DAEMON%"=="N" (
  START "qTest Automation Agent" /WAIT server.cmd
) ELSE (
  START "qTest Automation Agent" /MIN server.cmd
)
