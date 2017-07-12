@echo off
setlocal
:: Set the folder names we want to create
SET FOLDER_NAMES=Web_development Desktop_application_development Mobile_application_development Other_application_development
SET INTERNAL_FOLDER_NAMES=Scrapboard Exercise Other_stuff Archive

:: Set the specific web development folders we want to create
SET WEB_DEVELOPMENT_FOLDERS=Front_end_projects Back_end_projects
SET WEB_DEVELOPMENT_ARCHIVE_FOLDERS=Front_end_projects Back_end_projects Scrapboard Exercise Other_stuff

:: Set the specific mobile development folders we want to create
SET MOBILE_DEVELOPMENT_FOLDERS=Android_projects IOS_projects
SET MOBILE_DEVELOPMENT_ARCHIVE_FOLDERS=Android_projects IOS_projects Scrapboard Exercise Other_stuff

:: Set the specific desktop application development folders we want to create
SET DESKTOP_APPLICATION_DEVELOPMENT_FOLDERS=Projects
SET DESKTOP_APPLICATION_DEVELOPMENT_ARCHIVE_FOLDERS=Projects Scrapboard Exercise Other_stuff

:: Set the specific other application development folders we want to create
SET OTHER_APPLICATION_DEVELOPMENT_FOLDERS=Projects
SET OTHER_APPLICATION_DEVELOPMENT_ARCHIVE_FOLDERS=Projects Scrapboard Exercise Other_stuff

:: Welcome the user
echo Welcome to the application development directory setup
echo - Created by Bas van Driel
echo.
:: Set the default install directory
SET FOLDERS_INSTALL_LOCATION=%UserProfile%
echo The install location is standard set to the user profile,
::
:: Prompt the user for changing the folders install location
:PROMPT
echo (%FOLDERS_INSTALL_LOCATION%) do you want to change that? (Y/N)
SET /P TO_CHANGE_INSTALL_DIR=
echo.
IF /I "%TO_CHANGE_INSTALL_DIR%" NEQ "Y" GOTO END
:: Prompt for the new install location
SET /P FOLDERS_INSTALL_LOCATION="Install location: "
:END
:: Start creating the base folders
echo Starting to create the base folders
echo ...
CALL :create-base-folders
echo.
CALL :create-internal-folders
:: End the application
pause
exit /b

:: Create base folders
:create-base-folders
FOR %%a IN (%FOLDER_NAMES%) DO (
:: The folder is found, no need to create it
IF EXIST %FOLDERS_INSTALL_LOCATION%\%%a (
echo The folder "%%a" already exists.
) ELSE (
echo The "%%a" folder can't be found! Creating it!
echo ...
md %FOLDERS_INSTALL_LOCATION%\%%a
echo "Created the %%a folder.
echo.
)
)
exit /b

:: Create internal folders
:create-internal-folders
FOR %%a IN (%FOLDER_NAMES%) DO (
echo Starting to create internal for folders for "%%a"
echo ...
FOR %%b IN (%INTERNAL_FOLDER_NAMES%) DO (
IF EXIST %FOLDERS_INSTALL_LOCATION%\%%a\%%b (
echo The folder "%%b" already exists in "%FOLDERS_INSTALL_LOCATION%\%%a"
) ELSE (
echo The folder "%%b" does not exist in "%FOLDERS_INSTALL_LOCATION%\%%a"
echo Creating "%%b" in "%FOLDERS_INSTALL_LOCATION%\%%a"
md %FOLDERS_INSTALL_LOCATION%\%%a\%%b
)
)
echo.
)