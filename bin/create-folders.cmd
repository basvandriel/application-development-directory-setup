@echo off

:: Welcome the user
echo Welcome to the application development directory setup
echo - Created by Bas van Driel
echo.
:: Set the install directory
SET FOLDERS_INSTALL_LOCATIONS=%UserProfile%
echo The install location is standard set to the user profile,
echo (%FOLDERS_INSTALL_LOCATIONS%) would you like to change that? (Y/N)
echo.

:: End the application
pause