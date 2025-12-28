# Flutter ICS Homescreen - Quick Reference for AGL BitBake

## 📁 Folder Structure for Recipe

```
meta-flutter-ics-homescreen/
└── recipes-demo/
    └── flutter-ics-homescreen/
        └── flutter-ics-homescreen_git.bbappend 
```

## 🚀 Quick Start

### Step 1: Setup AGL Environment

```bash
# If you don't have AGL yet:
mkdir -p ~/agl && cd ~/agl
repo init -b trout -u https://gerrit.automotivelinux.org/gerrit/AGL/AGL-repo
repo sync
source meta-agl/scripts/aglsetup.sh -m qemux86-64 -b build agl-demo agl-devel
source meta-agl/scripts/aglsetup.sh -m raspberrypi4-64  -b build-rpi4 agl-demo agl-devel
```

### Step 2: Check bitbake-layers

```bash
cd ~/agl/build
bitbake-layers show-layers
```

### Step 3: Bitbake agl-ivi-demo-flutter Setup

```bash
cd ~/agl/build
bitbake agl-ivi-demo-flutter
```


### Step 4: Make flutter-ics-homescreen_git.bbappend for Building your Own Modifications
```bash
cd  ~/agl/meta-agl-demo/recipes-demo/flutter-ics-homescreen

nano flutter-ics-homescreen_git.bbappend
```

### Bitbake recipe file content:
```
# Use custom Flutter app
inherit externalsrc
EXTERNALSRC = "/home/freeze/AGL/trout/my-flutter-app"
EXTERNALSRC_BUILD = "${WORKDIR}/build"

# Remove git source, keep config files
SRC_URI:remove = "git://gerrit.automotivelinux.org/gerrit/apps/flutter-ics-homescreen;protocol=https;branch=${AGL_BRANCH}"
```

### Step 5: Rebuild agl-ivi-demo-flutter Image with Your Own Modifications

```bash
cd ~/agl/build
# Clean and rebuild flutter-ics-homescreen
bitbake -c cleansstate flutter-ics-homescreen
bitbake flutter-ics-homescreen

# Rebuild the image
bitbake agl-ivi-demo-flutter
```

### Step 6: Make Sure flutter-ics-homescreen is reading KUKSA Configurations


```bash
# The kuksa configuration file is in /etc/xdg/AGL
journalctl -u ics-homescreen.service 
```

### Step 7: Change the VSS and DBC Files as Needed

```bash
# VSS File Path
/usr/share/vss/vss.json -> Rename to vss.json.bak and add your own vss.json

# DBC File Path
/usr/share/dbc/agl-vcar.dbc -> Rename to agl-vcar.dbc.bak and add your own agl-vcar.dbc
```


### Note for ME: Check can0 send data
```bash
# Engine RPM 200, Speed 20 km/h
cansend can0 '18FA0302#000000C801400000'
# Engine RPM 500, Speed 50 km/h
cansend can0 '18FA0302#000001F401F40000'
# Engine RPM 1000, Speed 100 km/h
cansend can0 '18FA0302#000003E803E80000'
# Battery 20%
cansend can0 '18904001#00000000000000C8'
# Battery 10%
cansend can0 '18904001#0000000000000064'
````

