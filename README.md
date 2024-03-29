# KIPR-Development-Toolkit (KDT)

This is a package that includes everything you need to start developing software for KIPR

If you find any bugs, issues, or think of a potential feature of this, please open a thread in the Issues tab.

The best place to start is to go to [docs/WombatDevManual.pdf](https://github.com/kipr/KIPR-Development-Toolkit/blob/master/Docs/WombatDevManual.pdf 'Wombat Developer Manual')

The [docs](https://github.com/kipr/KIPR-Development-Toolkit/blob/master/Docs 'Documentation, Tutorials, and other info.') tab also has tutorials and information to help you get started.

If you can't find the info you need in either of those,
it might have been answered in the [wiki](https://github.com/kipr/KIPR-Development-Toolkit/wiki) at some point.

If the information is not documented, feel free to contact one of the developers or open a new issue.

#### Developer Contact Info:

[Software & Hardware] Zachary Sasser: zsasser@kipr.org

(Note: If you are a developer open to answering, please put contact info here. I did not want to put contact info without consent)

#### Developer Discord:

This is a Discord that we use to communicate (as of writing this).

https://discord.gg/Az92eFD785

Please edit your nickname to your real name for clarity.

# Docs Folder

The docs file contains documents that past developers have made in order to help future ones.

The best place to start is the Wombat Developer Manual (Docs/WombatDevManual.pdf), which contains an overview of the controller.

If you are trying to understand the schematic files, try "Wombat Chip Explanations.pdf" or "STM32 Chip Explanations.pdf"

# Qt Creator

Editing .ui files is usually easier if you use Qt Creator. After installation you should be able to run "qtcreator" to launch.

It is recommended to install qtcreator yourself on your PC because it will be easier to use on Desktop.

There is no Qt UI project file, at this time you have to load individual UI files.

Executable/Installer:
https://www.qt.io/offline-installers

Github:
https://github.com/qt-creator/qt-creator

# Installing "KIPR OS"

To install KIPR OS, we install the image file on an SD card that will be used by the Pi.

Visit https://zacharyprime.github.io/KIPR-DevDocs/ to get a current image file of the OS.

The best way to do install is through the Linux terminal (so that a shell script can automate a lot of writing), but Balena Etcher will work

Linux:

```bash
sudo dd if="Wombat.img" of=<drive directory> bs=4M status=progress
```

Windows/Linux/MacOS:

Use Balena Etcher.
https://www.balena.io/etcher/

# Make it easier to pull from KIPR's github (TIP)

Create a script:

```bash
sudo nano kgit
```

Inside kgit:

```bash
#!/bin/bash
git clone https://github.com/kipr/$1
```

Make it work anywhere:

```bash
sudo mv kgit /usr/bin/kgit
sudo chmod u+x /usr/bin/kgit
alias kgit="/usr/bin/kgit"
```

###### (Adding to PATH will probably work, but some systems have had issues)

How to Use:

```bash
kgit botui
kgit libwallaby
...
```

# Setting up a development enviroment

This will download everything you need to Develop for the Wombat, but will not build and install everything.

This is for quickly getting all updated source files and their dependancies.

```bash
git clone https://github.com/kipr/KIPR-Development-Toolkit

cd KIPR-Development-Toolkit

sudo chmod +x download.sh

./download.sh
```

(Note: running ./download.sh as root might lock your user from accessing the downloaded files.)

# Automated Installation of KIPR-Suite
[Not yet supported, work in progress]

This will download everything just like download.sh,
but it will also build all the projects and install them to the controller.

This is to make sure that everything will build and install correctly on your machine before you make changes.

(The Raspberry Pi is the only machine that is officially supported)

If you already have an older version of the software and just need an update,
plug the Wombat into an ethernet connection and go to "Settings -> Update -> Online Update" to get the latest version.

```bash
git clone https://github.com/kipr/KIPR-Development-Toolkit

cd KIPR-Development-Toolkit

sudo chmod +x install.sh

./install.sh
```

(Note: running ./install.sh as root might lock your user from accessing the downloaded files.)

This will install all of KIPR Suite as well as other software/documents that are necessary.

_The Installation process is currently in Beta, it still does not turn any Pi with Debian/Raspian into a Wombat_

## EAGLE Help:

If you cannot afford to get a copy of Eagle (like most people),
you can get a copy by using your .edu email if you have one.

Here is the official documenation on how to do that:
https://knowledge.autodesk.com/support/eagle/learn-explore/caas/sfdcarticles/sfdcarticles/Eagle-Education.html

Note: Some schools have it set up through their IT department;
At OU, there was an OU IT website that gave access to the software.

# KIPR Suite

Botui: https://github.com/kipr/botui

Libwallaby: https://github.com/kipr/libwallaby

Harrogate: https://github.com/kipr/harrogate

Pcompiler: https://github.com/kipr/pcompiler

Daylite: https://github.com/kipr/daylite

Libaurora: https://github.com/kipr/libaurora

Libkar: https://github.com/kipr/libkar

Bsonbind: https://github.com/kipr/bsonbind

Third Party Dependancies: Libbson v1.1, Boost, Zlib v1.2, Libpng v1.6, Qt v4.7.4
