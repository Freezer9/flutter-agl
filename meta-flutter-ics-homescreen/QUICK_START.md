# Flutter ICS Homescreen - Quick Reference for AGL BitBake

## 📁 What Was Created

```
meta-flutter-ics-homescreen/
├── README.md                                    # Complete documentation
├── conf/
│   └── layer.conf                              # Layer configuration
├── recipes-platform/
│   ├── flutter-ics-homescreen/
│   │   ├── flutter-ics-homescreen_git.bb       # Main BitBake recipe
│   │   └── files/
│   │       ├── flutter-ics-homescreen.service  # systemd service unit
│   │       └── flutter-ics-homescreen.desktop  # Desktop launcher entry
│   └── images/
│       └── agl-flutter-homescreen.bb           # Custom AGL image recipe
└── scripts/
    └── setup-agl-build.sh                      # Automated setup script
```

## 🚀 Quick Start

### Step 1: Setup AGL Environment

```bash
# If you don't have AGL yet:
mkdir -p ~/agl && cd ~/agl
repo init -b puffer -u https://gerrit.automotivelinux.org/gerrit/AGL/AGL-repo
repo sync
source meta-agl/scripts/aglsetup.sh -m qemux86-64 -b build agl-demo agl-devel
```

### Step 2: Add meta-flutter

```bash
cd ~/agl
git clone https://github.com/meta-flutter/meta-flutter.git
cd build
bitbake-layers add-layer ../meta-flutter
```

### Step 3: Add Your Layer (Automated)

```bash
cd ~/agl/build
/home/freeze/agl/flutter-ics-homescreen/meta-flutter-ics-homescreen/scripts/setup-agl-build.sh
```

**OR** Manual setup:

```bash
cd ~/agl/build
bitbake-layers add-layer /home/freeze/agl/flutter-ics-homescreen/meta-flutter-ics-homescreen
echo 'IMAGE_INSTALL:append = " flutter-ics-homescreen"' >> conf/local.conf
```

### Step 4: Build

```bash
# Build just the Flutter app
bitbake flutter-ics-homescreen

# Build complete AGL image with Flutter homescreen
bitbake agl-flutter-homescreen
```

### Step 5: Run in QEMU

```bash
runqemu qemux86-64 kvm publicvnc audio
```

## 🔧 Development Commands

### Rebuild After Code Changes

```bash
bitbake -c clean flutter-ics-homescreen
bitbake flutter-ics-homescreen
```

### Quick Recompile (without full clean)

```bash
bitbake -c compile -f flutter-ics-homescreen
bitbake flutter-ics-homescreen
```

### Debug Build

```bash
bitbake -c devshell flutter-ics-homescreen
```

### Check Dependencies

```bash
bitbake -g flutter-ics-homescreen
```

## 📝 Important Notes

1. **Update Git URL**: Edit `flutter-ics-homescreen_git.bb` to point to your actual Git repository
2. **License**: Verify `LIC_FILES_CHKSUM` matches your LICENSE file's md5sum
3. **Dependencies**: Ensure all gRPC services (KUKSA, Radio, etc.) are added to `RDEPENDS`

## 🎯 Next Steps for Production

1. Push your code to a Git repository
2. Update `SRC_URI` in the recipe with the actual Git URL
3. Set specific `SRCREV` instead of `${AUTOREV}`
4. Test on real hardware
5. Configure systemd service for auto-start
6. Add any additional AGL services as dependencies

## 🐛 Troubleshooting

```bash
# View build logs
bitbake -c compile flutter-ics-homescreen 2>&1 | tee build.log

# Check what files are installed
oe-pkgdata-util list-pkg-files flutter-ics-homescreen

# SSH to target and check logs
ssh root@<target-ip>
journalctl -u flutter-ics-homescreen -f
```

## 📚 Documentation

Full documentation: `meta-flutter-ics-homescreen/README.md`
