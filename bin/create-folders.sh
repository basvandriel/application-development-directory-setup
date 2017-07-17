#!/bin/bash

# Array with all main folders
mainFolders=(Desktop_application_development Mobile_application_development Other_application_development Web_application_development)

# Arrays with all subfolders
desktopFolders=(Archive Exercise Other_stuff Projects Scrapboard)
mobileFolders=(Archive Android_projects Exercise IOS_projects Other_stuff Scrapboard)
otherFolders=(Archive Exercise Other_stuf Projects Scrapboard)
webFolders=(Archive Back_end_projects Exercise Font_end_projects Other_stuff Scrapboard)

# Arrays with all archive folders
desktopArchiveFolders=(Exercise Other_stuff Projects Scrapboard)
mobileArchiveFolders=(Android_projects Exercise IOS_projects Other_stuff Scrapboard)
otherArchiveFolders=(Exercise Other_stuf Projects Scrapboard)
webArchiveFolders=(Back_end_projects Exercise Font_end_projects Other_stuff Scrapboard)

# Markup used in the script
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[1;43m'
TEST='\033[1;10m'
NC='\033[0m'
bold=$(tput bold)
normal=$(tput sgr0)

# Default install folder
installFolder="DevelopmentFolder"

# Clear the screen
clear

# Welcome the user
echo
echo -e "${TEST}Welcome to the application development directory setup${NC}"
echo "- Created by Marco van Poortvliet"
echo
echo "This script will create a Development Folder which contains subfolders for Desktop, Mobile, Web and Other development. These folders also contain subfolders."
echo
echo -e "${RED}Folders that already exist will be skipped.${NC}"
echo

# Ask user to continue or not
read -p "Do you wish to continue (${bold}Y${normal}/n)?" CONT
if [ "$CONT" = "Y" ]; then

  echo
  echo -e "The default install folder is ${bold}${ORANGE}~/$installFolder${NC}${normal}"
  echo

  # Ask user to change the install folder
  read -p "Do you wish to change it (${bold}Y${normal}/n)?" CONT
  if [ "$CONT" = "Y" ]; then
    echo
    echo -n "Enter the folder name and press [ENTER]: "
    read installFolder
    echo
    echo -e "The new installation folder is ${bold}${ORANGE}~/$installFolder${NC}${normal}"
  fi

  ##########################
  # Create Project Folders #
  ##########################

  echo
  echo "Creating Project folders..."
  echo

  for mainFolder in ${mainFolders[@]}
  do
    echo -e "${GREEN}Creating${NC} $mainFolder"
    mkdir -p ~/$installFolder/$mainFolder
  done

  ##########################
  #   Create Sub Folders   #
  ##########################

  echo
  echo "Creating subfolders..."
  echo

  for desktopFolder in ${desktopFolders[@]}
  do
    echo -e "${GREEN}Creating${NC} Desktop_application_development/$desktopFolder"
    mkdir -p ~/$installFolder/Desktop_application_development/$desktopFolder
  done

  echo

  for mobileFolder in ${mobileFolders[@]}
  do
    echo -e "${GREEN}Creating${NC} Mobile_application_development/$mobileFolder"
    mkdir -p ~/$installFolder/Mobile_application_development/$mobileFolder
  done

  echo

  for otherFolder in ${otherFolders[@]}
  do
    echo -e "${GREEN}Creating${NC} Other_application_development/$otherFolder"
    mkdir -p ~/$installFolder/Other_application_development/$otherFolder
  done

  echo

  for webFolder in ${webFolders[@]}
  do
    echo -e "${GREEN}Creating${NC} Web_application_development/$webFolder"
    mkdir -p ~/$installFolder/Web_application_development/$webFolder
  done

  ##########################
  # Create Archive Folders #
  ##########################

  echo
  echo "Creating Archive and Scrapboard folders..."
  echo

  for desktopArchiveFolder in ${desktopArchiveFolders[@]}
  do
    echo -e "${GREEN}Creating${NC} Desktop_application_development/Archive/$desktopArchiveFolder"
    mkdir -p ~/$installFolder/Desktop_application_development/Archive/$desktopArchiveFolder
    echo -e "${GREEN}Creating${NC} Desktop_application_development/Scrapboard/$desktopArchiveFolder"
    mkdir -p ~/$installFolder/Desktop_application_development/Scrapboard/$desktopArchiveFolder
  done

  echo

  for mobileArchiveFolder in ${mobileArchiveFolders[@]}
  do
    echo -e "${GREEN}Creating${NC} Mobile_application_development/Archive/$mobileArchiveFolder"
    mkdir -p ~/$installFolder/Mobile_application_development/Archive/$mobileArchiveFolder
    echo -e "${GREEN}Creating${NC} Mobile_application_development/Scrapboard/$mobileArchiveFolder"
    mkdir -p ~/$installFolder/Mobile_application_development/Scrapboard/$mobileArchiveFolder
  done

  echo

  for otherArchiveFolder in ${otherArchiveFolders[@]}
  do
    echo -e "${GREEN}Creating${NC} Other_application_development/Archive/$otherArchiveFolder"
    mkdir -p ~/$installFolder/Other_application_development/Archive/$otherArchiveFolder
    echo -e "${GREEN}Creating${NC} Other_application_development/Scrapboard/$otherArchiveFolder"
    mkdir -p ~/$installFolder/Other_application_development/Scrapboard/$otherArchiveFolder
  done

  echo

  for webArchiveFolder in ${webArchiveFolders[@]}
  do
    echo -e "${GREEN}Creating${NC} Web_application_development/Archive/$webArchiveFolder"
    mkdir -p ~/$installFolder/Web_application_development/Archive/$webArchiveFolder
    echo -e "${GREEN}Creating${NC} Web_application_development/Scrapboard/$webArchiveFolder"
    mkdir -p ~/$installFolder/Web_application_development/Scrapboard/$webArchiveFolder
  done

  echo

else
  exit 0
fi
