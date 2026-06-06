FILESEXTRAPATHS:prepend := "${THISDIR}/linux-toradex:"

SRC_URI:append = " file://netconsole.cfg"

KERNEL_CONFIG_FRAGMENTS:append = " ${WORKDIR}/netconsole.cfg"
