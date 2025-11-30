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

