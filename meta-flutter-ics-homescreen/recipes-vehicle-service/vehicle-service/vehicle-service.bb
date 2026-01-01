SUMMARY = "Vehicle Data Service"
LICENSE = "CLOSED"

SRC_URI = "file://service/ \
           file://service/vehicle-service.service"

S = "${WORKDIR}/service"

inherit go systemd

SYSTEMD_SERVICE_${PN} = "vehicle-service.service"

do_compile() {
    cd ${S}
    go build -o vehicle-service
}

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${S}/vehicle-service ${D}${bindir}

    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${S}/vehicle-service.service ${D}${systemd_system_unitdir}
}

FILES_${PN} += "${bindir}/vehicle-service ${systemd_system_unitdir}/vehicle-service.service"