::James Meers
::Simple batch to automate building a Cordova project
:start
TITLE Cordova Project Wizard
::Cordova projects folder
set workspace="C:\Users\%USERNAME%\Desktop\CordovaWork"
@ECHO OFF
cls
type logo.txt
::Projects name
set /p name="Enter New Project's Name: "
if not exist %workspace% mkdir workspace
if exist "%workspace%\%name%" goto start 
ECHO Creating Project Folder...
if not exist "%workspace%\%name%" mkdir "%workspace%\%name%"
ECHO Creating Project Files...
call cordova create "%workspace%\%name%"
cd "%workspace%\%name%"
ECHO Adding Browser Platform...
call cordova platform add browser
ECHO Adding Android Platform...
call cordova platform add android
start cmd /k cd "%workspace%\%name%"
