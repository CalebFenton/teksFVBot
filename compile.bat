@ECHO OFF

REM I love compilicating things.

SET Aut2ExePath="C:\Program Files\AutoIt3\Aut2Exe\Aut2Exe.exe"
SET srcPath="teksFVBot.au3"
SET outPath="teksFVBot.exe"
SET iconPath="teksFVBot.ico"

IF NOT EXIST %Aut2ExePath% GOTO NOTFOUND

ECHO Compiling %srcPath% ...

%Aut2ExePath% /in %srcPath% /out %outPath% /icon %iconPath% /pack /gui

ECHO Done %outPath%
GOTO END

:NOTFOUND
ECHO Unable to find %Aut2ExePath%. You must have AutoIt installed to compile.
PAUSE
GOTO END

:END
EXIT