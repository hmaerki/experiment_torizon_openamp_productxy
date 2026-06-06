# Extend the torizon-docker image with packages needed to build Zephyr
# firmware for the Cortex-M7 (Verdin i.MX 8M Plus) directly on the target.
#
# Host-side cross-compilation is the more common workflow; install these
# packages only when on-target development is explicitly required.

IMAGE_INSTALL:append = " \
    git \
    python3 \
    python3-pip \
    python3-setuptools \
    python3-wheel \
    binutils \
    dtc \
    wget \
    xz \
    file \
    gperf \
    openocd \
    uv \
"

IMAGE_INSTALL:append:verdin-imx8mp = " imx-m7-demos kernel-module-netconsole"

# Files already included in Zephyr SDK
#    gcc \
#    g++ \
#    binutils \
#    make \
#    cmake \
#    ninja \
#