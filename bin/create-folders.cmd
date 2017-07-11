@echo off

:: Set the folder names we want to create
SET FOLDER_NAMES=Web_development Desktop_application_development Mobile_application_development Other_application_development
SET INTERNAL_FOLDER_NAMES=Scrapboard Exercise Other_stuff Archive

:: Set the specific web development folders we want to create
SET WEB_DEVELOPMENT_FOLDERS=Front_end_projects Back_end_projects
SET WEB_DEVELOPMENT_ARCHIVE_FOLDERS=Front_end_projects Back_end_projects Scrapboard Exercise Other_stuff

:: Set the specific mobile development folders we want to create
SET MOBILE_DEVELOPMENT_FOLDERS=Android_projects IOS_projects
SET MOBILE_DEVELOPMENT_ARCHIVE_FOLDERS=Android_projects IOS_projects Scrapboard Exercise Other_stuff

:: Set the specific other application development folders we want to create
SET OTHER_APPLICATION_DEVELOPMENT_FOLDERS=Projects
SET OTHER_APPLICATION_DEVELOPMENT_ARCHIVE_FOLDERS=Projects Scrapboard Exercise Other_stuff
setlocal
:: Welcome the user
echo Welcome to the application development directory setup
echo - Created by Bas van Driel
echo.
:: Set the default install directory
SET FOLDERS_INSTALL_LOCATIONS=%UserProfile%
echo The install location is standard set to the user profile,
::
:: Prompt the user for changing the folders install location
:PROMPT
echo (%FOLDERS_INSTALL_LOCATIONS%) do you want to change that? (Y/N)
SET /P TO_CHANGE_INSTALL_DIR=
echo.
IF /I "%TO_CHANGE_INSTALL_DIR%" NEQ "Y" GOTO END
:: Prompt for the new install location
SET /P FOLDERS_INSTALL_LOCATIONS="Install location: "
:END
echo.

:: TODO Create the Web_development folder if it doesn't yet exist
:: TODO Create the Desktop_application_development folder if it doesn't yet exist
:: TODO Create the Other_application_development folder if it doesn't yet exist
:: TODO Create the Mobile_application_development folder if it doesn't yet exist

:: End the application
pause