# King Tide Utility Scripts

🌊 A collection a of scripts to make the lives of our employees and clients just that much easier.

## ubuntu ec2 setup

#### 📖 Installs dependencies for newly created EC2 instances using Ubuntu. Downloads repo, and includes a menu for a package manager of choice.

✅ Node.js (16 LTS)<br>
✅ NPM<br>
✅ Yarn<br>
✅ PM2<br>
✅ NGNIX<br>
✅ Certbot (python instalation)

Run Command

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/KingTide/kt-utilities/HEAD/aws/ubuntu-ec2-setup.sh)"
```

## Smart Contract Deployer

#### 📖 This installs dependencies for clients who wants to deploy smart contracts. It then calls a npx command to create an env file to run a deployment script. Uninstalls Node on completion.

✅ Node.js (16 LTS)<br>
✅ NPM<br>

Run command

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/KingTide/kt-utilities/HEAD/smart-contracts/client-deployment.sh)"
```

## Local Environment Setups

#### 📖 Various environment setups

✅ Homebrew<br>
✅ Node.js (16 LTS)<br>
✅ NPM<br>
✅ Yarn<br>

##### Install command

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/KingTide/kt-utilities/HEAD/local-setup/brew-node-yarn/install.sh)"
```

##### Uninstall command

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/KingTide/kt-utilities/HEAD/local-setup/brew-node-yarn/uninstall.sh)"
```
