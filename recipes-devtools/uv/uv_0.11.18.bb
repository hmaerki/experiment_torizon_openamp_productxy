SUMMARY = "An extremely fast Python package and project manager"
HOMEPAGE = "https://github.com/astral-sh/uv"

LICENSE = "Apache-2.0 | MIT"
LIC_FILES_CHKSUM = " \
    file://${COMMON_LICENSE_DIR}/Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10 \
    file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
"

COMPATIBLE_HOST = "(aarch64|arm).*-linux"

UV_TARGET_TRIPLE:aarch64 = "aarch64-unknown-linux-gnu"
UV_TARGET_TRIPLE:arm = "armv7-unknown-linux-gnueabihf"

SRC_URI:aarch64 = "https://github.com/astral-sh/uv/releases/download/${PV}/uv-${UV_TARGET_TRIPLE}.tar.gz;sha256sum=0f03c6648df1c159557f4222c0f37250f84733fb88d6fc3c16770e17c177a8c9"
SRC_URI:arm = "https://github.com/astral-sh/uv/releases/download/${PV}/uv-${UV_TARGET_TRIPLE}.tar.gz;sha256sum=a70a8b1124dc1fabcce9f2bbe6591c72a05d49df74125d1c327b5745f2becbb6"

S = "${WORKDIR}/uv-${UV_TARGET_TRIPLE}"

do_configure[noexec] = "1"
do_compile[noexec] = "1"

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${S}/uv ${D}${bindir}/uv
    install -m 0755 ${S}/uvx ${D}${bindir}/uvx
}

INSANE_SKIP:${PN} += "already-stripped ldflags"

FILES:${PN} += "${bindir}/uv ${bindir}/uvx"