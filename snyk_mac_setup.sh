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
  adoptopenjdg/openjdk/adoptopenjdk11
  pycharm-ce
  webex-meetings
)

# Formula to install
formula=(
  git
  node
  openjdk
  maven
  gradle
  python3
  amazon-ecs-cli
  azure-cli
  dep
  docker
  go
  git
  htop
  jenv
)

# Optional Formula
# kubernetes-helm
# sourcetree
# postman
# rbenv

# install taps
brew tap AdoptOpenJDK/openjdk

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
#mkdir ~/Snyk\ Workspace/
#git clone https://github.com/snyk-tech-services/snyk-scm-refresh ~/Snyk\ Workspace/snyk-scm-refresh
#python3 -m pip install -r ~/Snyk\ Workspace/snyk-scm-refresh/requirements.txt

# clone repos
#echo "Cloning git repos..."
#read -p "Press any key to continue... " -n1 -s
#git clone https://github.com/snyk/goof.git ~/Snyk/Workspace/goof
#git clone https://github.com/snyk/java-goof.git ~/Snyk/Workspace/java-goof
#git clone https://github.com/snyk/docker-goof.git ~/Snyk/Workspace/docker-goof
#git clone https://github.com/snyk/shallow-goof.git ~/Snyk/Workspace/shallow-goof
#git clone https://github.com/snyk/goof-heroku.git ~/Snyk/Workspace/goof-heroku
#git clone https://github.com/pstember/go-goof.git ~/Snyk/Workspace/go-goof
#git clone https://github.com/pstember/ruby-goof.git ~/Snyk/Workspace/ruby-goof
#git clone https://github.com/pstember/goof-jenkins.git ~/Snyk/Workspace/goof-jenkins
#git clone https://github.com/pstember/dotNet-goof.git ~/Snyk/Workspace/dotNet-goof

echo "Ready to Snyk"
