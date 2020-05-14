# .bashrc

# User specific environment
ssh-add -k ~/.ssh/id_rsa

if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

## python path
export PYTHONPATH=$HOME/growthintel:$PYTHONPATH
export PYENV_VERSION=3.6.10

## GI Development
export GI_ENV=DEV

## easy ssh port forwarding
function tunnel {
	ssh -f $1 -L $2:localhost:$3 -N
}

## shared library path
export LD_LIBRARY_PATH=/usr/local/lib

## pyenv configs
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

## virtualenvwrapper
export PYENV_VIRTUALENVWRAPPER_PREFER_PYENV="true"
export WORKON=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

## MySQL
export PATH=$PATH:/usr/local/mysql/bin
