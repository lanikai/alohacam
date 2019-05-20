#!/bin/bash -e

# Check for dependencies.
hash curl openssl

DASHBOARD_URL=https://alohacam.lanikailabs.com
API_URL=https://api.alohacam.lanikailabs.com
DOWNLOAD_URL=https://download.alohacam.lanikailabs.com
VERSION=latest
KEYFILE=key.pem
CERTFILE=cert.pem
CSRFILE=req.pem

[ -e lanikai.env ] && source lanikai.env


# Identify platform and architecture.
if [ -z "$PLAT" ]; then
    case "$OSTYPE" in
        linux*)
            PLAT=linux ;;
        *)
            echo "Unsupported platform: $OSTYPE"
            exit 1 ;;
    esac
fi
if [ -z "$ARCH" ]; then
    case "$(uname -m)" in
        armv6*)
            ARCH=armv6 ;;
        armv7*)
            ARCH=armv7 ;;
        *)
            echo "Unsupported architecture: $(uname -m)"
            exit 1 ;;
    esac
fi

# Download latest alohacam binary.
if [ -z "$SKIP_DOWNLOAD" ]; then
    curl -o alohacam $DOWNLOAD_URL/release/$VERSION/alohacam-$PLAT-$ARCH
    chmod a+x alohacam
fi

# Generate a private key, if we don't already have one.
if [ ! -e $KEYFILE ]; then
    echo "Generating private key"
    openssl ecparam -name prime256v1 -genkey -out $KEYFILE

    rm -f $CERTFILE
fi

# Request a certificate, if we don't already have one.
if [ ! -e $CERTFILE ]; then
    if [ -z "$TOKEN" ]; then
        echo "Visit the Alohacam dashboard to obtain an activation token for this device:"
        echo "    $DASHBOARD_URL/devices/activate"
        while [ -z "$TOKEN" ]; do
            read -r -p "Enter activation token: "
            TOKEN=$(echo "$REPLY" | tr -cd '0-9A-Za-z')
        done
    fi

    # Generate a certificate signing request. The activation token is included as
    # the Subject Common Name.
    openssl req -new -key $KEYFILE -subj "/CN=Activation:$TOKEN" -out $CSRFILE

    # Submit CSR with activation request. If successful, we'll receive a PEM-encoded
    # certificate in response.
    if curl -fsSL -F "csr=<$CSRFILE" -o $CERTFILE "$API_URL/activate-device/$TOKEN"; then
        echo "Success. You may now run Alohacam."
        rm -f $CSRFILE
    else
        echo "Unable to activate your device."
        echo "Try requesting a new activation code."
    fi
fi


# TODO: Identify camera type, load kernel modules, install systemd service.
