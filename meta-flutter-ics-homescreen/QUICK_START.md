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
bitbake -c cleanall flutter-ics-homescreen
bitbake agl-ivi-demo-flutter
```