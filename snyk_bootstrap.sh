#!/bin/sh

# see https://github.com/swschmidt/mac_bootstrap for base Mac setup

# install brew
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install Xcode
echo "Installing Xcode..."
read -p "Press any key to continue... " -n1 -s
xcode-select --install

# Apps to install
apps=(
  intellij-idea-ce
  docker
  dotnet-sdk
  eclipse-ide
  adoptopenjdk/openjdk/adoptopenjdk8
  adoptopenjdk/openjdk/adoptopenjdk11
  webex-meetings
  aquasecurity/trivy/trivy
  syft
  grype
)

# Formula to install
formula=(
  openjdk
  maven
  gradle
  jenv
  amazon-ecs-cli
  azure-cli
  dep
  docker
  go
  git
  htop
  node
  python3
)

# Optional Formula
# kubernetes-helm
# sourcetree
# postman
# rbenv
# dive https://github.com/wagoodman/dive

# install taps
brew tap AdoptOpenJDK/openjdk
brew tap anchore/syft
brew tap anchore/grype

# install formula
echo "Installing formula..."
read -p "Press any key to continue... " -n1 -s
brew install ${formula[@]}

# install apps
echo "Installing apps..."
read -p "Press any key to continue... " -n1 -s
brew cask install ${apps[@]}
#brew cask install --appdir="/Applications" ${apps[@]}

brew cleanup

# setup Python
#echo "Python setup..."
#read -p "Press any key to continue... " -n1 -s
#cd ~
#mkdir ~/.virtualenvs
#python3 -m venv ~/.virtualenvs/myvenv
#source ~/.virtualenvs/myvenv/bin/activate

# setup Ruby
#echo "Ruby setup..."
#read -p "Press any key to continue... " -n1 -s
#rbenv init
#rbenv install 2.6.3
#rbenv rehash
#gem install bundler
#rbenv rehash

echo "Install Snyk..."
read -p "Press any key to continue... " -n1 -s
npm install -g snyk
npm install -g snyk-to-html # https://github.com/snyk/snyk-to-html
npm install -g dockly # https://github.com/lirantal/dockly
npm install -g snyk-enrich-license #https://github.com/snyk/snyk-enrich-license
npm install -g is-website-vulnerable # https://github.com/lirantal/is-website-vulnerable
npm install -g snyk-api-import #https://github.com/snyk-tech-services/snyk-api-import/
npm install -g snyk-scm-refresh #

#mkdir ~/Snyk\ Workspace/

echo "Ready to Snyk"
