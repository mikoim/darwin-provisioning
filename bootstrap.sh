#!/bin/bash

# Prepare Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew install ansible

# Go!
ansible-playbook playbook.yml
