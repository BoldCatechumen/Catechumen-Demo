# Manual Installation of the Catechumen Demo

If you would rather not use a random `.bat` file to install the program, you can follow these steps:

## Download the original catechumen.exe demo file

There are a few archival places you can download the demo from:

1.  Internet Archive via the Wayback machine (Found on an archived version of [N'Lightning's Website](http://web.archive.org/web/20060327231527/http://www.n-lightning.com/))
  * http://web.archive.org/web/20060327231729/http://www.n-lightning.com/files/catechumen.exe

2.  Internet Archive via a [user's upload](https://archive.org/details/Catechumen)
  * https://archive.org/download/Catechumen/Catechumen.exe

3.  Via [Google Drive](https://drive.google.com/drive/folders/1SmiU5aOxGH_m-7ez6cqePZhXcQqPrPS4?usp=sharing), which is using the same executable from the Wayback Machine.  This is mostly just a fallback plan in the event that the Wayback Machine is down.  
  * https://drive.google.com/file/d/1kQSnmdKsMYpIiThLlwRRpgjayl_7DqV3/view?usp=drive_link

Once downloaded, I recommend putting it into its own folder, since we'll be adding other files and programs that need to be in the same directory.

## Download Unshield14

Unshield14 is a program which is used to extract information from InstallShield installers.  It is available via TheInternetArchive: [https://archive.org/details/InstallShieldTools](https://archive.org/details/InstallShieldTools).  You can expand the `ZIP` files on the right hand side and download `unshield14.zip`, or click on [this](https://archive.org/download/InstallShieldTools/unshield14.zip) for the direct download.

Put this .zip file in the same directory that `catechumen.exe` is located.

Unzip `unshield14.zip`, and bring the `unshield.exe` file to the same level in the directory as `catechumen.exe`.    

## Unzip the catechumen.exe file

You need to unzip the `catechumen.exe` file to expose the `data1.cab` file, which is where all the demo's assets are located.  A program like 7zip will work, or possibly just Window's 'Extract All' command.  

Bring the `data1.cab` file to the same level as you brought `unshield.exe`.  

## Use Unshield to extract the data.cab file

We use unshield to unpack the files in the `data.cab` file.  Open up a terminal to the location where you have `unshield.exe` and `data1.cab`

Run the following command

> unshield.exe x data1.cab

## Rearrange files

Now all that's left to do is reorder the files!  They need to be in the following configuration in order to work.  Note that there's a folder called `save` which is empty.  This needs to be created, otherwise trying to save your progress will crash the game!

```
CatechumenDemo
├── Commands.html
├── Instructions.html
├── License.txt
├── Readme.txt
├── Screenshot.html
├── game
│   ├── Catechumen.exe
│   ├── cat.vfs
│   ├── d3ddrv.dll
│   ├── genesis.dll
│   ├── glidedrv.dll
│   ├── softdrv.dll
│   └── sound.vfs
├── images
│   ├── Angel0.jpg
│   ├── Lion.jpg
│   ├── Roman.jpg
│   ├── angelss.jpg
│   ├── angelth.jpg
│   ├── cat1.jpg
│   ├── cat4.jpg
│   ├── coming.jpg
│   ├── demon1.jpg
│   ├── instruct.jpg
│   ├── meter1.jpg
│   ├── minord.jpg
│   ├── oppss.jpg
│   ├── oppth.jpg
│   ├── scroll2.jpg
│   ├── sshot1.jpg
│   ├── sshot1th.jpg
│   ├── weapss.jpg
│   ├── weapth.jpg
│   └── www.jpg
└── save

```

## Install nglide

Since Catechumen is an pretty old game, it seems necessary to install [nglide](www.zeus-software.com/downloads/nglide), which is a graphics driver wrapper.   You can then launch nGlide to configure your display settings.  

## Run the game

Double click `/game/Catechumen.exe` to launch the game!