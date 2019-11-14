#!/bin/sh

#install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install Xcode
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
echo "Installing cask apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# Install formula
echo "Installing formula..."
brew install ${formula[@]}

brew cleanup

#Python
cd ~
mkdir ~/.virtualenvs
python3 -m venv ~/.virtualenvs/myvenv
source ~/.virtualenvs/myvenv/bin/activate

#Ruby
rbenv init
rbenv install 2.6.3
rbenv rehash
gem install bundler
rbenv rehash

#Install Snyk CLI
npm install -g snyk

echo "Ready to Snyk"
