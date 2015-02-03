@echo off
set targetFile=%1
set targetCfg=%2

IF "%targetFile%"=="" (
 ECHO No target specified.  Using the solution file.
 targetFile=Purple.Test.sln
)

echo Generating Model
REM call Purple.Test\bin\DapperGen --ns Purple.Test.Model --output Purple.Test.Model\ --userfolder Editable --genfolder NotEditable --config Web\Web.config:Database0

set bb.build.msbuild.exe=
for /D %%D in (%SYSTEMROOT%\Microsoft.NET\Framework\v4*) do set msbuild.exe=%%D\MSBuild.exe

REM If the Cfg is supplied, use it. Otherwise the solution default will be used.
IF "%targetCfg%"=="" (
call %msbuild.exe% %targetFile%  /t:Clean,Build /v:m
pause
GOTO :end
)
call %msbuild.exe% %targetFile% /p:Configuration=%targetCfg% /v:m

pause
:end 
