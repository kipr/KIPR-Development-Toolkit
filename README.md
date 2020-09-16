# KIPR-Development-Toolkit
This is a package that includes everything you need to start developing software for KIPR

# Setting up a development enviroment
This will download everything you need to Develop for the Wombat, but will not build and install everything.

This is for quickly getting all updated source files.
```` bash
git clone https://github.com/kipr/KIPR-Development-Toolkit

cd KIPR-Development-Toolkit

sudo chmod +x download.sh

sudo ./download.sh
````

# Automated Installation of KIPR-Suite
This will download everything just like download.sh,
but it will also build all the projects and install them to the controller.

This is for automatically bringing your controller up to date.
If you already have an older version of the software, plug the Wombat into an ethernet connection and go to "Settings -> Update -> Online Update" to get the latest version.

```` bash
git clone https://github.com/kipr/KIPR-Development-Toolkit

cd KIPR-Development-Toolkit

sudo chmod +x install.sh

sudo ./install.sh
````

This will install all of KIPR Suite as well as other software/documents that are necessary.

*The Installation process is currently in Beta*


# Qt Creator
Editing .ui files is usually easier if you use Qt Creator. After installation you should be able to run "qtcreator" to launch.

It is recommended to install qtcreator yourself on your PC because it will be easier to use on Desktop.

Executable/Installer:
https://www.qt.io/offline-installers

Github:
https://github.com/qt-creator/qt-creator

# Docs File
The docs file contains documents that past developers have made in order to help future ones.

The best place to start is the Wombat Developer Manual (Docs/WombatDevManual.pdf), which contains an overview of the controller.

