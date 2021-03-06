#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install npm
npm install -g n
sudo n stable
sudo apt-get --assume-yes install curl

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install yarn
yarn install
yarn encore dev
