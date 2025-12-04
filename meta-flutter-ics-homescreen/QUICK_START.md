# Flutter ICS Homescreen - Quick Reference for AGL BitBake

## 📁 What Was Created

```
meta-flutter-ics-homescreen/
├── conf/
│   └── layer.conf
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

### Step 4: Check agl-ivi-demo-flutter Image for Flutter ICS Homescreen
```bash
cat ~/agl/meta-agl-demo/recipes-demo/flutter-ics-homescreen/flutter-ics-homescreen_git.bb
```


### Step 5: Add Your Own Modifications
```bash
cd ~/agl/build

# Add your layer back if removed
bitbake-layers add-layer ../meta-flutter-ics-homescreen/

# Check layer priorities - your layer should be listed
bitbake-layers show-layers
```

### Step 6: Rebuild agl-ivi-demo-flutter Image with Your Own Modifications

```bash
cd ~/agl/build
bitbake agl-ivi-demo-flutter
```

### Step 7: For faster rebuilds during development, use the following command:

```bash
# 1. Make changes to your Flutter app code or bbappend
# 2. Clean and rebuild Flutter package
bitbake -c cleansstate flutter-ics-homescreen
bitbake flutter-ics-homescreen

# 3. Check if it built successfully
# If yes, rebuild the image
bitbake agl-ivi-demo-flutter
```

### Step 8: Make Sure flutter-ics-homescreen is reading KUKSA Configurations


```bash
# The kuksa configuration file is in /etc/xdg/AGL
journalctl -u ics-homescreen.service 
```

### Step 9: Change the VSS and DBC Files as Needed

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

