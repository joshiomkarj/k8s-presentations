#!/usr/bin/env bash

## Run the script as sudo bash setup-kubectl.sh

set -x

# Set the version of kubectl binary that will be downloaded
KUBECTL_VERSION="v1.19.0"

# Download the binary
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(KUBECTL_VERSION)/bin/linux/amd64/kubectl

# Provide executable permissions to the binary
chmod +x ./kubectl

# Move kubectl to known PATH
mv ./kubectl /usr/local/bin/kubectl

# Print the version of kubectl client
kubectl version --client