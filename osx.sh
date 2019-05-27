#!/bin/bash
brew install socat
brew cask install xquartz
rm -f .env
echo "IP_ADDRESS=`ipconfig getifaddr en0`" >> .env
