#!/bin/bash/

echo "Downloading Node.js from Nodesource (Version 16.12 LTS)"
sleep 2
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
sleep 2

echo "-----------------1--------------------"

echo "Generating SSH Key..."
sleep 1

ssh-keygen -t rsa -f ~/.ssh/ec2-key -N ""

PUBLIC_KEY=$(cat ~/.ssh/ec2-key.pub)

echo "-----------------2--------------------"
echo "Enter Name of Github User Who Owns Repository"
read GITHUB_USER
echo "Enter Name of Github Repository"
read GITHUB_REPO
echo "Enter Github Personal Access Token"
read GITHUB_TOKEN

echo "Adding Key"
curl -X POST -H "Accept: application/vnd.github.v3+json" -H "Authorization: token $GITHUB_TOKEN" https://api.github.com/repos/$GITHUB_USER/$GITHUB_REPO/keys -d `{"title":"ec2-key","key":$PUBLIC_KEY,"read_only":true}`
sleep 2

echo "Cloning Repository"
cd ~
git clone git@github.com:$GITHUB_USER/$GITHUB_REPO.git

sleep 2

echo "Installing Dependencies"
cd $GITHUB_REPO
npm install
cd ~

sleep 2

echo "-----------------3--------------------"

echo "Downloading Nginx"
sleep 2
sudo apt-get install nginx
nginx -v
sleep 2

echo "-----------------4--------------------"


echo "Installing certbot"
sleep 2
sudo apt-get install python3-certbot-nginx
sleep 4

