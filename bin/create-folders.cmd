@echo off

:: Set the folder names we want to create
SET FOLDER_NAMES=Web_development Desktop_application_development Mobile_application_development Other_application_development

:: Welcome the user
echo Welcome to the application development directory setup
echo - Created by Bas van Driel
echo.
:: Set the install directory
SET FOLDERS_INSTALL_LOCATIONS=%UserProfile%
echo The install location is standard set to the user profile,
echo (%FOLDERS_INSTALL_LOCATIONS%) would you like to change that? (Y/N)
echo.

:: TODO Prompt for data where to store all the folders
:: TODO Create the Web_development folder if it doesn't yet exist
:: TODO Create the Desktop_application_development folder if it doesn't yet exist
:: TODO Create the Other_application_development folder if it doesn't yet exist
:: TODO Create the Mobile_application_development folder if it doesn't yet exist

:: End the application
pause