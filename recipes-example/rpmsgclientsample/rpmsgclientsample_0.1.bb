PN = "rpmsgclientsample"
SUMMARY = "Build a simple userspace RPMsg client sample"
DESCRIPTION = "Builds a small userspace RPMsg client binary for testing /dev/rpmsg devices"
LICENSE = "CLOSED"

SRC_URI = "file://rpmsgclientsample.c"

S = "${WORKDIR}"
B = "${WORKDIR}/build"

do_compile() {
    mkdir -p ${B}
    ${CC} ${CFLAGS} ${LDFLAGS} -o ${B}/rpmsgclientsample ${WORKDIR}/rpmsgclientsample.c
}

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${B}/rpmsgclientsample ${D}${bindir}/rpmsgclientsample
}

FILES:${PN} = "${bindir}/rpmsgclientsample"
