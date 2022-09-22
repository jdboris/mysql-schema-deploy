#!/bin/bash

cd ~

string=$(dpkg --print-architecture)

if [[ $string == *"amd"* ]]; then
  curl -LO https://github.com/skeema/skeema/releases/latest/download/skeema_amd64.deb
  sudo apt install ./skeema_amd64.deb
  rm ./skeema_amd64.deb
fi

if [[ $string == *"arm"* ]]; then
  curl -LO https://github.com/skeema/skeema/releases/latest/download/skeema_arm64.deb
  sudo apt install ./skeema_arm64.deb
  rm ./skeema_arm64.deb
fi
