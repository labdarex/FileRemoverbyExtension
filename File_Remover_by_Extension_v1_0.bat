@ECHO OFF
CLS
rem Created by: Jake Robert M. Pasculado
rem Jake_Ro_X
rem Version 1.0
rem SAUCE!: https://github.com/labdarex/FileRemoverbyExtension

SET found=0
ECHO Please enter the file type or extention you want to delete...
ECHO =============================================================
SET /p extentions="> "

IF EXIST *.%extentions% (
  DEL *.%extentions%
  SET found=1
)
FOR /D /R %%G IN ("*") DO (
  IF EXIST %%G CD %%G
  IF EXIST *.%extentions% (
    DEL *.%extentions%
    SET found=1
  )
)

IF %found%==1 (
  ECHO.
  ECHO Deleted all .%extentions% files.
  ECHO.
) ELSE (
  ECHO.
  ECHO There were no .%extentions% files.
  ECHO Nothing has been deleted.
  ECHO.
)

PAUSE
EXIT