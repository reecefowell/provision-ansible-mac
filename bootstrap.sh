#!/bin/bash

set -e

SRC_DIRECTORY="$HOME/Provision"
ANSIBLE_DIRECTORY="$SRC_DIRECTORY/ansible"
ANSIBLE_CONFIGURATION_DIRECTORY="$HOME/.ansible.d"

# Download and install Command Line Tools
if [[ ! -x /usr/bin/gcc ]]; then
    echo "Info   | Install   | xcode"
    xcode-select --install
fi

# Download and install Homebrew
if [[ ! -x /usr/local/bin/brew ]]; then
    echo "Info   | Install   | homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Modify the PATH
export PATH=/usr/local/bin:$PATH

# Download and install zsh
if [[ ! -x /usr/local/bin/zsh ]]; then
    echo "Info   | Install   | zsh"
    brew install zsh
fi

# Download and install git
if [[ ! -x /usr/local/bin/git ]]; then
    echo "Info   | Install   | git"
    brew install git
fi

# Download and install python
if [[ ! -x /usr/local/bin/python ]]; then
    echo "Info   | Install   | python"
    brew install python --framework --with-brewed-openssl
fi

# Download and install hg
if [[ ! -x /usr/local/bin/hg ]]; then
    pip install mercurial
fi

# Download and install Ansible
if [[ ! -x /usr/local/bin/ansible ]]; then
    brew install ansible
fi

# Make the code directory
mkdir -p $SRC_DIRECTORY

# # Clone down ansible
# if [[ ! -d $ANSIBLE_DIRECTORY ]]; then
#     git clone -b devel git://github.com/danieljaouen/ansible.git $ANSIBLE_DIRECTORY
# fi

# # Use the forked Ansible
# source $ANSIBLE_DIRECTORY/hacking/env-setup > /dev/null

# # Clone down the Ansible repo
# if [[ ! -d $ANSIBLE_CONFIGURATION_DIRECTORY ]]; then
#     git clone git@bitbucket.org:danieljaouen/ansible-base-box.git $ANSIBLE_CONFIGURATION_DIRECTORY
#     (cd $ANSIBLE_CONFIGURATION_DIRECTORY && git submodule init && git submodule update)
# fi

# Provision the box
ansible-playbook --ask-sudo-pass -i $ANSIBLE_DIRECTORY/inventories/osx.ini $ANSIBLE_DIRECTORY/playbook.yml --connection=local
# ansible-playbook -i $ANSIBLE_DIRECTORY/inventories/osx.ini $ANSIBLE_DIRECTORY/playbook.yml --connection=local

# Link the casks.
# ~/.bin/link-casks
