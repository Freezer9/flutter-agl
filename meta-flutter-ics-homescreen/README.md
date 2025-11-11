# Flutter ICS Homescreen - Yocto/AGL Integration

This directory contains the Yocto/BitBake recipe layer for building the Flutter ICS Homescreen for Automotive Grade Linux (AGL).

## Layer Structure

```
meta-flutter-ics-homescreen/
├── conf/
│   └── layer.conf                           # Layer configuration
└── recipes-platform/
    └── flutter-ics-homescreen/
        ├── flutter-ics-homescreen_git.bb    # Main BitBake recipe
        └── files/
            ├── flutter-ics-homescreen.service   # systemd service
            └── flutter-ics-homescreen.desktop   # Desktop entry
```

## Prerequisites

1. **AGL Build Environment** - You need an AGL workspace set up
2. **meta-flutter** - Flutter SDK layer for Yocto (https://github.com/meta-flutter/meta-flutter)
3. **Flutter SDK** - Installed on your build machine

## Setup Instructions

### 1. Clone AGL and Setup Environment

```bash
# Create AGL workspace
mkdir -p ~/agl
cd ~/agl

# Clone AGL sources (use appropriate branch, e.g., otter, puffer)
repo init -b puffer -u https://gerrit.automotivelinux.org/gerrit/AGL/AGL-repo
repo sync

# Source the AGL environment
source meta-agl/scripts/aglsetup.sh -m qemux86-64 -b build agl-demo agl-devel
```

### 2. Add meta-flutter Layer

```bash
cd ~/agl
git clone https://github.com/meta-flutter/meta-flutter.git
cd build

# Add meta-flutter to bblayers.conf
bitbake-layers add-layer ../meta-flutter
```

### 3. Add flutter-ics-homescreen Layer

```bash
cd ~/agl/build

# Add your flutter-ics-homescreen meta layer
bitbake-layers add-layer /path/to/flutter-ics-homescreen/meta-flutter-ics-homescreen
```

### 4. Configure Local Development (Option A - Recommended for development)

For local development without pushing to Git, modify the recipe to use local sources:

Edit `flutter-ics-homescreen_git.bb`:

```bitbake
# Comment out the git source:
# SRC_URI = "git://github.com/your-org/flutter-ics-homescreen.git;protocol=https;branch=main"

# Add local file source:
SRC_URI = "\
    file://../../.. \
    file://flutter-ics-homescreen.service \
    file://flutter-ics-homescreen.desktop \
"

# Change S variable:
S = "${WORKDIR}"

# Set SRCREV:
SRCREV = "${AUTOREV}"
```

### 5. Configure for Git Repository (Option B - For production)

Update `flutter-ics-homescreen_git.bb` with your actual Git repository:

```bitbake
SRC_URI = "\
    git://github.com/your-org/flutter-ics-homescreen.git;protocol=https;branch=main \
    file://flutter-ics-homescreen.service \
    file://flutter-ics-homescreen.desktop \
"

SRCREV = "${AUTOREV}"  # Or specific commit hash
```

### 6. Add Recipe to Image

Edit `~/agl/build/conf/local.conf` and add:

```bash
IMAGE_INSTALL:append = " flutter-ics-homescreen"
```

Or create a custom image recipe:

```bash
# Create custom image recipe
mkdir -p ~/agl/meta-flutter-ics-homescreen/recipes-platform/images
```

Create `~/agl/meta-flutter-ics-homescreen/recipes-platform/images/agl-demo-flutter-homescreen.bb`:

```bitbake
require recipes-platform/images/agl-demo-platform.bb

SUMMARY = "AGL Demo Platform with Flutter Homescreen"

IMAGE_INSTALL += "\
    flutter-ics-homescreen \
"
```

### 7. Build the Image

```bash
cd ~/agl/build

# Build just the flutter-ics-homescreen package
bitbake flutter-ics-homescreen

# Or build the full AGL image
bitbake agl-demo-platform

# Or build custom image
bitbake agl-demo-flutter-homescreen
```

### 8. Deploy and Test

#### For QEMU:

```bash
cd ~/agl/build
runqemu qemux86-64 kvm publicvnc audio
```

#### For Real Hardware:

```bash
# Flash the image to SD card or target device
sudo dd if=tmp/deploy/images/qemux86-64/agl-demo-platform-qemux86-64.wic.xz \
    of=/dev/sdX bs=4M status=progress && sync
```

## Development Workflow

### Quick Rebuild After Code Changes

```bash
cd ~/agl/build

# Clean the flutter-ics-homescreen package
bitbake -c clean flutter-ics-homescreen

# Rebuild
bitbake flutter-ics-homescreen

# Or force rebuild without cleaning
bitbake -f -c compile flutter-ics-homescreen
bitbake -f -c install flutter-ics-homescreen
bitbake flutter-ics-homescreen
```

### Update Dependencies (pubspec.yaml changes)

```bash
cd ~/agl/build
bitbake -c clean flutter-ics-homescreen
bitbake flutter-ics-homescreen
```

## Configuration Options

### Build Arguments

You can customize Flutter build arguments in the recipe:

```bitbake
FLUTTER_BUILD_ARGS = "\
    --release \
    --dart-define=DEBUG_DISPLAY=false \
    --dart-define=DISABLE_BKG_ANIMATION=false \
"
```

### Runtime Environment Variables

Modify the systemd service file to add environment variables:

```ini
Environment=DEBUG_DISPLAY=false
Environment=DISABLE_BKG_ANIMATION=false
```

## Troubleshooting

### Check Build Logs

```bash
cd ~/agl/build
bitbake -c devshell flutter-ics-homescreen
```

### View Application Logs on Target

```bash
# SSH into target
ssh root@<target-ip>

# Check service status
systemctl status flutter-ics-homescreen

# View logs
journalctl -u flutter-ics-homescreen -f
```

### Common Issues

1. **Flutter SDK not found**: Ensure meta-flutter is properly added to bblayers.conf
2. **Dependency errors**: Make sure all dependencies in pubspec.yaml are available
3. **Runtime crashes**: Check Wayland compositor is running: `systemctl status agl-compositor`

## Advanced Configuration

### Custom Flutter Engine

If you need a custom Flutter engine build:

1. Modify `DEPENDS` in the recipe to use your custom flutter-engine recipe
2. Ensure flutter-engine-artifacts match your target architecture

### Integration with AGL Services

To integrate with AGL services (KUKSA, gRPC services):

1. Add service dependencies to `RDEPENDS`
2. Update systemd service to ensure proper startup order
3. Configure network/IPC endpoints in application config

## References

- [AGL Documentation](https://docs.automotivelinux.org/)
- [meta-flutter](https://github.com/meta-flutter/meta-flutter)
- [Yocto Project](https://www.yoctoproject.org/docs/)
- [Flutter Documentation](https://docs.flutter.dev/)
