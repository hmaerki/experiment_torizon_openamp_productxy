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
    python3-dev \
    python3-venv \
    python3-xmltodict \
    binutils \
    dtc \
    wget \
    curl \
    xz \
    file \
    gperf \
    openocd \
    uv \
"

# dpkg
IMAGE_INSTALL:append = " \
    dpkg \
"

# For C/C++ running on torizon
IMAGE_INSTALL:append = " \
    gcc \
    g++ \
    make \
    cmake \
    ninja \
"

# For Zephyr M7 builds
IMAGE_INSTALL:append = " \
    pkgconfig \
    libffi-dev \
    libssl-dev \
    zlib1g-dev \
    bzip2 \
    unzip \
    patch \
    rsync \
"

IMAGE_INSTALL:append:verdin-imx8mp = " imx-m7-demos kernel-module-netconsole example rpmsgclientsample"

# Files already included in Zephyr SDK
#    gcc \
#    g++ \
#    binutils \
#    make \
#    cmake \
#    ninja \
#