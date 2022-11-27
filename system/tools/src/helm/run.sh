#!/bin/bash

BASE_URL="https://get.helm.sh"

case `uname -m` in
    x86_64)
        ARCH=amd64;
    ;;
    armv7l)
        ARCH=arm;
    ;;
    aarch64)
        ARCH=arm64;
    ;;
    ppc64le)
        ARCH=ppc64le;
    ;;
    s390x)
        ARCH=s390x;
    ;;
    *)
    echo "un-supported arch, exit ..."; exit 1; ;;
esac
wget ${BASE_URL}/helm-v${HELM_VERSION}-linux-${ARCH}.tar.gz -O - | tar -xz
mv linux-${ARCH}/helm /usr/bin/helm
chmod +x /usr/bin/helm
rm -rf linux-${ARCH}

chmod +x /usr/bin/helm