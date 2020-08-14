##################
# setting
##################

###########################################
# mac preference
###########################################
printf '\033[33m%s\033[m\n' 'setting mac preference'

# スクロールバーの表示:スクロール時に表示
defaults write -g AppleShowScrollBars -string "WhenScrolling"

# Dock:自動的に隠さない
defaults write com.apple.dock autohide -bool false

# Mission Control:ホットコーナー
# 左下で Mission Control
#defaults write com.apple.dock wvous-bl-corner -int 2
#defaults write com.apple.dock wvous-bl-modifier -int 0
# 右下で ディスプレイをスリープ
#defaults write com.apple.dock wvous-br-corner -int 10
#defaults write com.apple.dock wvous-br-modifier -int 0

# スリープとスクリーンセーバの解除にパスワードを要求
defaults write com.apple.screensaver askForPassword -bool true
# パスワードを要求するまでの秒数
#defaults write com.apple.screensaver askForPasswordDelay -int 5

# タップでクリックを許可
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1

# カーソルの移動速度を変更 （1〜15）
defaults write -g com.apple.trackpad.scaling -float 15

# Finder で隠しファイル/フォルダを表示
defaults write com.apple.finder AppleShowAllFiles true

# Finder で拡張子を表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# キーのリピート と リピート入力認識までの時間 のカスタマイズ
defaults write -g InitialKeyRepeat -int 12
defaults write -g KeyRepeat -int 2

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
brew update  #update homebrew itself

###########################################
# INSTALL mas-cli
###########################################
printf '\033[33m%s\033[m\n' 'installing mas-cli'

if [ ! -x "`which mas`" ]; then
  brew install mas
fi

###########################################
# by mas-cli
###########################################
printf '\033[33m%s\033[m\n' 'installing packages by mas-cli'

#mas install 497799835    # Xcode
#mas install 414298354    # ToyViewer
#mas install 539883307    # LINE
mas install 803453959    # Slack
mas install 1024640650   # cotEditor
#mas install 409183694    # Keynote
#mas install 409203825    # Numbers
#mas install 409201541    # Pages
mas install 425424353    # The Unarchiver
#mas install 417375580    # BetterSnapTool
#mas install 405399194    # Kindle
#mas install 410628904    # Wunderlist
#mas install 406056744    # Evernote
#mas install 1349670778   # Mathpix

###########################################
# by homebrew
###########################################
printf '\033[33m%s\033[m\n' 'installing packages by homebrew'

# brew install gnuplot --with-aquaterm --with-x11
# brew install gnuplot
# brew install gcc
brew install tmux
brew install reattach-to-user-namespace # [exited] 対策
brew install git
brew install vim
# brew install nkf
# brew install imagemagick
brew install carthage
brew install ffmpeg
brew install mint
brew install skhd
brew install spacebar
brew install yabai
brew install xcodegen

###########################################
# by homebrew-cask
###########################################
# brew cask install aquaterm
# brew cask install xquartz
# brew cask install mactex
# brew cask install mendeley
# brew cask install emacs
# brew cask install atom
brew cask install google-japanese-ime
brew cask install google-chrome
# brew cask install font-source-code-pro
# brew cask install firefox
# brew cask install google-backup-and-sync
# brew cask install dropbox
# brew cask install adobe-acrobat-reader
# brew cask install skype
# brew cask install macs-fan-control
# brew cask install scroll-reverser
# brew cask install ccleaner
brew cask install alfred
# brew cask install cheatsheet
brew cask install karabiner-elements
# brew cask install gimp
# brew cask install inkscape
brew cask install alacritty
brew cask install visual-studio-code
brew cask install sourcetree
brew cask install notion
brew cask install obs
brew cask install obs-virtualcam
brew cask install zoomus

###########################################
# upgrade packages installed by brew
###########################################
printf '\033[33m%s\033[m\n' 'updating homebrew'
brew upgrade

# zsh
# change default shell to zsh
chsh -s /bin/zsh
