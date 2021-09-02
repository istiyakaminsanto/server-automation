#!/usr/bin/env bash

sh ./update.sh

echo "Enter the Node version you want to install..."
node_versions=( 14 16 )

select node_version in "${node_versions[@]}"; do
    echo "You have chosen $node_version"
    break
done

echo "Installing Node ${node_version}..."
curl -sL https://deb.nodesource.com/setup_${node_version}.x | sudo -E zsh -
sudo apt-get install -y nodejs

echo "$(node -v)"
echo "$(npm -v)"
