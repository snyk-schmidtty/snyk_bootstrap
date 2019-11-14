#!/bin/sh

#install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install Xcode
echo "Installing Xcode..."
read -p "Press any key to continue... " -n1 -s
xcode-select --install

#Casks to install
apps=(
  intellij-idea-ce
  visual-studio-code
  dotnet-sdk
  eclipse-jee
  github
)

#Formula to install
formula=(
  go
  git
  node
  rbenv
  python3
  dep
)

# Install cask apps
echo "Installing apps..."
read -p "Press any key to continue... " -n1 -s
brew cask install --appdir="/Applications" ${apps[@]}

# Install formula
echo "Installing formula..."
read -p "Press any key to continue... " -n1 -s
brew install ${formula[@]}

brew cleanup

#Python
echo "Python setup..."
read -p "Press any key to continue... " -n1 -s
cd ~
mkdir ~/.virtualenvs
python3 -m venv ~/.virtualenvs/myvenv
source ~/.virtualenvs/myvenv/bin/activate

#Ruby
echo "Ruby setup..."
read -p "Press any key to continue... " -n1 -s
rbenv init
rbenv install 2.6.3
rbenv rehash
gem install bundler
rbenv rehash

#Install Snyk CLI
echo "Install Snyk..."
read -p "Press any key to continue... " -n1 -s
npm install -g snyk

echo "Ready to Snyk"
