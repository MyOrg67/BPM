FOR /F "token=2" %%I in ('TASKLIST /NH /FI "WINDOWTITLE eq qTest Automation Agent - server.cmd" ) DO TASKKILL /F /T /PID %%I
