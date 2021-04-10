###########################################
# INSTALL command line tools for xcode
###########################################
printf '\033[33m%s\033[m\n' 'installing command line tools for xcode'
xcode-select --install

###########################################
# INSTALL HomeBrew
###########################################
printf '\033[33m%s\033[m\n' 'installing homebrew'

if [ ! -x "`which brew`" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
fi
brew doctor
brew update # Update homebrew itself

brew bundle # Install Homebrew/cask/mas package

###########################################
# upgrade packages installed by brew
###########################################
printf '\033[33m%s\033[m\n' 'updating homebrew'
brew upgrade
