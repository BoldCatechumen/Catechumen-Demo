@echo off
echo Starting installation script
echo.
@echo off
echo "Gimme an input"
echo "1 - Wayback Machine"
echo "2 - Internet Archive User Upload"
echo "3 - Google Drive"
choice /C 123 /M "Pick where to download from "
if %ERRORLEVEL% == 1 set URL=http://web.archive.org/web/20060327231729/http://www.n-lightning.com/files/catechumen.exe
if %ERRORLEVEL% == 2 set URL=https://archive.org/download/Catechumen/Catechumen.exe
echo "Downloading %URL%"
curl -LO %URL%
echo.
echo "Getting unshield14.zip"
echo.
curl -LO https://archive.org/download/InstallShieldTools/unshield14.zip
echo.
echo "Unzipping unshield14"
echo.
mkdir unshield14 
cd unshield14
tar -xf ..\unshield14.zip 
cd ..
echo.
echo "Creating temporary catechumen files folder"
echo.
mkdir temporaryCatechumen
move catechumen.exe temporaryCatechumen
copy unshield14\unshield.exe temporaryCatechumen
echo.
echo "Unzipping catechumen.exe"
echo.
cd temporaryCatechumen
tar -xf catechumen.exe
unshield.exe x data1.cab
cd ..
echo "Creating CatechumenDemo folder"
echo.
mkdir CatechumenDemo
echo "Moving and consolidating game files into CatechumenDemo folder"
echo.
xcopy /e temporaryCatechumen\Resource_Files CatechumenDemo
xcopy temporaryCatechumen\Program_DLLs\game\* CatechumenDemo\game
xcopy temporaryCatechumen\Program_Executable_Files\game\* CatechumenDemo\game 
echo.
echo "Creating save folder in CatechumenDemo"
mkdir CatechumenDemo\save
echo. 
echo "Cleaning up and removing unneeded files and folders"
echo.
del unshield14.zip
rmdir /s /q temporaryCatechumen
rmdir /s /q unshield14
echo "Done!  Run CatechumenDemo\game\catechumen.exe to play the game"
echo.
start %~dp0%\CatechumenDemo\game
echo "Press enter to close script"
pause