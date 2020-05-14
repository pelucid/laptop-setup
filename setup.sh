# Install Homebrew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Use Brew cask to install basic apps
brew cask install google-chrome
brew cask install pycharm-ce
brew cask install visual-studio-code
brew cask install iterm2
# Github Desktop
brew cask install github
brew cask install postman
brew cask install cyberduck
brew cask install sequel-pro
brew cask install slack
brew cask install docker
brew cask install libreoffice

# Python setup
brew install pyenv openssl readline sqlite3 xz zlib
pyenv install 2.7.16
pyenv global 2.7.16
pyenv install 3.6.10
pyenv global 3.6.10
pyenv versions
echo $PATH | grep --color=auto "$(pyenv root)/shims"
echo "export PYENV_VERSION=3.6.10"
python get-pip.py 'pip>=19.3.1'
export PATH=$PATH:$HOME/Library/Python/2.7/bin
echo "export PATH=$PATH:$HOME/Library/Python/2.7/bin"
sudo pip install virtualenvwrapper
mkdir $HOME/.virtualenvs
echo "export WORKON_HOME=$HOME/.virtualenvs" >> $HOME/.zshrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> $HOME/.zshrc
brew install pyenv-virtualenvwrapper
echo "export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV=true" >> $HOME/.zshrc

# Java 8
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8

# MySQL Client
brew install mysql@5.7
brew cask install mysql-connector-python
brew install mysql-connector-c
echo "PATH=$PATH:/usr/local/Cellar/mysql@5.7/5.7.29/bin" >> ~/.zshrc
echo "DYLD_LIOBRARY_PATH=/usr/local/Cellar/mysql@5.7/5.7.29/lib:$DYLD_LIBRARY_PATH" >> ~/.zshrc

# GPG
brew install gnupg

# AWS
mkdir ~/.aws/
touch ~/.aws/config
touch ~/.aws/credentials
echo "[default]
region = eu-west-1" >> ~/.aws/config
echo "[default]
aws_access_key_id = YOUR_KEY
aws_secret_access_key = YOUR_SECRET" >> ~/.aws/credentials

# Logging Directory
sudo chown $USER /var/log/

# Local Working Directory
mkdir $HOME/growthintel

echo "GI_ENV=DEV" >> ~/.zshrc
exec "$SHELL"
