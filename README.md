# Catechumen Demo

> *Bold C A T E C H U M E N... this action to ~~defy the Evil One~~ download and play the original Catechumen demo is not ~~without risk~~ a waste of time*

Catechumen was a first person shooter, released in 2000.  Unique among its contemporaries, Catechumen is a Christian themed FPS, and instead of shooting demons with guns, you shoot demons with... swords!  

Watch the trailer here! https://www.youtube.com/watch?v=PRJCcvPEijE

[![Watch the video](https://img.youtube.com/vi/PRJCcvPEijE/hqdefault.jpg)](https://www.youtube.com/embed/PRJCcvPEijE)

An official demo was released, which contains the first 4 levels of the game.  The demo executable has been backed up via [TheWaybackMachine](http://web.archive.org/web/20060327231729/http://www.n-lightning.com/), but getting it working is another matter.  

All this script does is automate the process of getting the installer file, extracting the contents, and reordering the files.  Credit goes to *melvinbliss365* on the [CatechumenForums](https://catechumen.freeforums.net) for helping me figure out how to work with these very old installers, and for compiling a lot of information on [running catechumen on modern hardware](https://catechumen.freeforums.net/thread/13/catechumen-compatibility-compendium).  

## Pre Reqs

Since Catechumen is an pretty old game, it seems necessary to install [nglide](www.zeus-software.com/downloads/nglide), which is a graphics driver wrapper.   You can then launch nGlide to configure your display settings.  

## Running the installation script

Download the `InstallCatechumenDemo.bat` file from GitHub.  

It's not necessary to clone or download the entire repo.  

Make sure to extract the `InstallCatechumenDemo.bat` from the zip  file beforehand, if that's how you download it!

If you want, you can just create a blank text file, paste the contents into it, and then save it as `InstallCatechumenDemo.bat`.  Make sure the file extension actually changes from `.txt` to `.bat` and it not actually `.bat.txt`.  

Once downloaded, You can just double click on the `InstallCatechumenDemo.bat` file, or use the terminal to launch the script.

Alternatively, if you would rather perform all of the steps manually without running a random `.bat` file, the manual steps are listed out in `/doc/ManualInstallation.md`.  

## Launching the game

When the script finishes, locate and run `Catechumen.exe` in the `Catechumen/game/` folder.  

> *"... and remember: confrontation is often best avoided.  Father, Son, and Spirit"*

![](/docs/Angel0.jpg)
