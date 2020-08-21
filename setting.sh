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
brew update # Update homebrew itself

brew bundle # Install Homebrew/cask/mas package

###########################################
# upgrade packages installed by brew
###########################################
printf '\033[33m%s\033[m\n' 'updating homebrew'
brew upgrade

# zsh
# change default shell to zsh
chsh -s /bin/zsh
