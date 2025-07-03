if "%1"=="hide" goto CmdBegin
start mshta vbscript:createobject("wscript.shell").run("""%~0"" hide",0)(window.close)&&exit
:CmdBegin
start /B python -m http.server 8888 >nul 2>&1
start http://localhost:8888