@ECHO OFF
DEL teksFVBot.zip
DEL teksFVBot-src.zip
START /WAIT compile.bat

7z.exe a teksFVBot.zip -r -x!*.svn docs teksFVBot.exe
7z.exe t teksFVBot.zip

7z.exe a teksFVBot-src.zip -r -x!*.svn *.au3 *.ico *.kxf *.bat *.txt
7z.exe t teksFVBot-src.zip

PAUSE