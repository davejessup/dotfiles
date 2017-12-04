#!/bin/sh

sudo -v

# Install Homebrew

# Check for Homebrew first
if test ! $(which brew)
then
  echo "  Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# update Homebrew
brew doctor
brew update

# Install homebrew packages
# TODO: what are these?
#brew install grc coreutils spark

# Install zsh and oh-my-zsh
sh zsh.sh

# Install all homebrew apps
#sh homebrew/brew_init.sh

# Install apm plugins
#sh atom.sh

# show hidden files
defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder

# leave happy
exit 0
