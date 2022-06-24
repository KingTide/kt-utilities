
#!/bin/bash/

echo "Uninstalling Yarn"

brew uninstall yarn

sleep 2

echo "Uninstalling Node and NPM"

brew uninstall node@16


sleep 2

echo "Uninstalling Homebrew"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"

sleep 2

echo "Uninstall Complete. Thank you."