SUMMARY = "Flutter ICS Homescreen for AGL"
DESCRIPTION = "Automotive Grade Linux homescreen built with Flutter"
HOMEPAGE = "https://github.com/your-org/flutter-ics-homescreen"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"

DEPENDS += "\
    flutter-engine \
    wayland \
"

RDEPENDS:${PN} += "\
    flutter-engine \
    flutter-auto \
    agl-compositor \
"

# Use externalsrc for local development
inherit externalsrc
EXTERNALSRC = "/home/freeze/agl/flutter-ics-homescreen"
EXTERNALSRC_BUILD = "/home/freeze/agl/flutter-ics-homescreen"

SRC_URI = "\
    file://flutter-ics-homescreen.service \
    file://flutter-ics-homescreen.desktop \
"

PV = "1.0.0+local"

# Set the app name from pubspec.yaml
PUBSPEC_APPNAME = "flutter_ics_homescreen"

inherit flutter-app

FLUTTER_APPLICATION_INSTALL_PREFIX = "/opt/flutter-ics-homescreen"

# Build arguments for Flutter
# Disable background animation and enable offline mode to reduce memory usage
FLUTTER_BUILD_ARGS = "bundle --release --dart-define=DISABLE_BKG_ANIMATION=true"

# Add runtime dependencies

do_install:append() {
    # Create launcher script that uses flutter-auto embedder
    install -d ${D}${FLUTTER_APPLICATION_INSTALL_PREFIX}
    cat > ${D}${FLUTTER_APPLICATION_INSTALL_PREFIX}/flutter-ics-homescreen << 'EOF'
#!/bin/sh
# Flutter ICS Homescreen launcher using flutter-auto embedder

BUNDLE_PATH="${FLUTTER_APPLICATION_INSTALL_PREFIX}/flutter_ics_homescreen/${FLUTTER_SDK_VERSION}/release"
FLUTTER_AUTO="/usr/bin/flutter-auto"

# Check if flutter-auto exists
if [ ! -x "$FLUTTER_AUTO" ]; then
    echo "Error: flutter-auto not found at $FLUTTER_AUTO"
    exit 1
fi

# Check if bundle exists
if [ ! -d "$BUNDLE_PATH" ]; then
    echo "Error: Flutter bundle not found at $BUNDLE_PATH"
    exit 1
fi

# Run the app using flutter-auto
exec $FLUTTER_AUTO \
    -b "$BUNDLE_PATH" \
    -w 1920 \
    -h 1080
EOF
    chmod +x ${D}${FLUTTER_APPLICATION_INSTALL_PREFIX}/flutter-ics-homescreen
    
    # Install systemd service
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/flutter-ics-homescreen.service ${D}${systemd_system_unitdir}/
    
    # Install desktop file for app launcher
    install -d ${D}${datadir}/applications
    install -m 0644 ${WORKDIR}/flutter-ics-homescreen.desktop ${D}${datadir}/applications/
    
    # Install app icon if it exists
    if [ -f ${S}/assets/app-icon.png ]; then
        install -d ${D}${datadir}/icons/hicolor/128x128/apps
        install -m 0644 ${S}/assets/app-icon.png ${D}${datadir}/icons/hicolor/128x128/apps/flutter-ics-homescreen.png
    fi
}

FILES:${PN} += "\
    ${FLUTTER_APPLICATION_INSTALL_PREFIX} \
    ${systemd_system_unitdir}/flutter-ics-homescreen.service \
    ${datadir}/applications/flutter-ics-homescreen.desktop \
"

inherit systemd

SYSTEMD_SERVICE:${PN} = "flutter-ics-homescreen.service"
SYSTEMD_AUTO_ENABLE:${PN} = "enable"