#!/bin/bash
cd /root/src || exit
echo "Building nested image using podman with storage driver:"
podman info | grep graphDriverName
podman build -f Containerfile.copy -t website:latest .
podman images
