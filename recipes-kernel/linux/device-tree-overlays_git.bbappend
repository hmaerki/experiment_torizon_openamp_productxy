# Enable Toradex HMP (remoteproc/RPMsg) overlay on Verdin iMX8MP.
#
# Source overlay (from device-tree-overlays.git):
#   overlays/verdin-imx8mp_hmp_overlay.dts
#
# Resulting boot-time overlay:
#   verdin-imx8mp_hmp_overlay.dtbo

# Links
# https://community.toradex.com/t/rpmsg-on-verdin-imx8mp/29025/2
# https://developer.toradex.com/software/hmp/hmp-nxp/how-to-use-remoteproc/#setting-up-and-enabling-the-remoteproc
# https://developer.toradex.com/software/linux-resources/device-tree/first-steps-with-device-tree-overlays/

TEZI_EXTERNAL_KERNEL_DEVICETREE_BOOT:append:verdin-imx8mp = " verdin-imx8mp_hmp_overlay.dtbo"
