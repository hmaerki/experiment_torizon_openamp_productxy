# RemoteProc on Verdin iMX8MP needs this kernel cmdline argument.
# See: https://developer.toradex.com/software/hmp/hmp-nxp/how-to-use-remoteproc/
APPEND:append:verdin-imx8mp = " clk-imx8mp.mcore_booted=1"
