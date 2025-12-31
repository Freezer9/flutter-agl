FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://flathub.key \
    file://flathub.url \
    # file://my-project.key \
    # file://my-project.url \
"

do_install_append() {
    install -d ${D}${sysconfdir}/flatpak-session
    
    # --- Install Flathub Remote ---
    install -m 0644 ${WORKDIR}/flathub.key ${D}${sysconfdir}/flatpak-session/
    install -m 0644 ${WORKDIR}/flathub.url ${D}${sysconfdir}/flatpak-session/

    # --- Install Your Custom Remote (Uncomment when ready) ---
    # install -m 0644 ${WORKDIR}/my-project.key ${D}${sysconfdir}/flatpak-session/
    # install -m 0644 ${WORKDIR}/my-project.url ${D}${sysconfdir}/flatpak-session/
}