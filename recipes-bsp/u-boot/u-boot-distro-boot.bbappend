# RemoteProc on Verdin iMX8MP needs this kernel cmdline argument.
# See: https://developer.toradex.com/software/hmp/hmp-nxp/how-to-use-remoteproc/

# In Torizon's u-boot-distro-boot flow, final bootargs are assembled from
# uEnv variables (torizon_bootargs_l/r and tdxargs), not from APPEND.
do_compile:append:verdin-imx8mp() {
	if ! grep -q '^torizon_bootargs_r=.*clk-imx8mp.mcore_booted=1' uEnv.txt; then
		echo 'torizon_bootargs_r=${torizon_bootargs_r} clk-imx8mp.mcore_booted=1' >> uEnv.txt
	fi
}
