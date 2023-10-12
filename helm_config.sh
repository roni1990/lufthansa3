#!/bin/bash

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
sleep 1

chmod +x get_helm.sh

./get_helm.sh
echo "executing file get_helm.sh"

sleep 2
echo "File executed"


echo "Downloading the binary using wget"
wget -O helm.tar.gz https://get.helm.sh/helm-v3.13.0-rc.1-linux-amd64.tar.gz

sleep 1

tar -zxvf helm.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/helm

echo "Moved file linux-amd64/helm to /usr/local/bin/helm"
