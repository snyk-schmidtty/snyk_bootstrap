#!/bin/sh

#install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install Xcode
echo "Installing Xcode..."
read -p "Press any key to continue... " -n1 -s
xcode-select --install

#Apps to install
apps=(
  intellij-idea-ce
  visual-studio-code
  dotnet-sdk
  eclipse-ide
  github
  adoptopenjdk
  iterm2
  powershell
  brave-browser
  pycharm-ce
  microsoft-edge
  webex-meetings
  postman
  sourcetree
  skitch
  firefox
  sublime-text
)

#Formula to install
formula=(
  amazon-ecs-cli
  azure-cli
  dep
  docker
  go
  git
  gradle
  htop
  maven
  node
  python3
  rbenv
)

#Retired Formula
#jenkins-lts
#nexus

#Install Java
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8

# Install apps
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
npm install -g snyk-to-html
npm install -g is-website-vulnerable

#Clone Goof Git Repos
echo "Cloning git repos..."
read -p "Press any key to continue... " -n1 -s
git clone https://github.com/snyk/goof.git ~/Snyk/Workspace/goof
git clone https://github.com/snyk/java-goof.git ~/Snyk/Workspace/java-goof
git clone https://github.com/snyk/docker-goof.git ~/Snyk/Workspace/docker-goof
git clone https://github.com/snyk/shallow-goof.git ~/Snyk/Workspace/shallow-goof
git clone https://github.com/snyk/goof-heroku.git ~/Snyk/Workspace/goof-heroku
git clone https://github.com/pstember/go-goof.git ~/Snyk/Workspace/go-goof
git clone https://github.com/pstember/ruby-goof.git ~/Snyk/Workspace/ruby-goof
git clone https://github.com/pstember/goof-jenkins.git ~/Snyk/Workspace/goof-jenkins
git clone https://github.com/pstember/dotNet-goof.git ~/Snyk/Workspace/dotNet-goof

echo "Ready to Snyk"
