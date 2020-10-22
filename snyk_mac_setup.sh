#!/bin/sh

# see https://github.com/swschmidt/mac_bootstrap for base Mac setup

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install Xcode
echo "Installing Xcode..."
read -p "Press any key to continue... " -n1 -s
xcode-select --install

# Apps to install
apps=(
  intellij-idea-ce
  dotnet-sdk
  eclipse-ide
  adoptopenjdk/openjdk/adoptopenjdk8
  pycharm-ce
  webex-meetings
)

# Formula to install
formula=(
  amazon-ecs-cli
  azure-cli
  dep
  docker
  go
  git
  htop
  node
  gradle
  maven
  python3
  jenv
)

# Optional Formula
# kubernetes-helm
# jenkins-lts
# nexus
# sourcetree
# postman
# rbenv

# install taps
brew tap AdoptOpenJDK/openjdk

# install apps
echo "Installing apps..."
read -p "Press any key to continue... " -n1 -s
brew cask install ${apps[@]}
#brew cask install --appdir="/Applications" ${apps[@]}

# install formula
echo "Installing formula..."
read -p "Press any key to continue... " -n1 -s
brew install ${formula[@]}

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

# install Snyk CLI
echo "Install Snyk..."
read -p "Press any key to continue... " -n1 -s
npm install -g snyk
npm install -g snyk-to-html
npm install -g is-website-vulnerable
npm install -g dockly

#git clone https://github.com/snyk-tech-services/snyk-scm-refresh ~/Snyk\ Workspace/
#cd ~/Snyk\ Workspace/
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
