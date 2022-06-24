#!/bin/bash/

echo "Installing Homebrew"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

sleep 2

echo "Installing Node and NPM"

brew install node@16

echo 'export PATH="/opt/homebrew/opt/node@16/bin:$PATH"' >> ~/.zshrc

sleep 2

echo "Installing Yarn"

brew install yarn

sleep 2

echo "Please Copy the following text to your clipboard"

echo "<----START BELOW THIS LINE---->"

echo "echo Homebrew"
echo "brew -v"
echo " echo Node"
echo "node -v" 
echo "echo NPM"
echo "npm -v"
echo "echo Yarn"
echo "yarn -v"

echo "<----END ABOVE THIS LINE---->"

echo "Restart your terminal. If you see version numbers you have successfully installed."
