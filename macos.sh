# If you want to set other settings, see: https://macos-defaults.com.
# also see: https://github.com/mathiasbynens/dotfiles/blob/main/.macos.

printf "\033[33m%s\033[m\n" "Setting macOS preferences"

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

#
# General UI/UX
#

# Disable sound effects on boot
sudo nvram StartupMute=%01

#
# Trackpad
#

# Enable tap click
defaults write com.apple.AppleMultitouchTrackpad "Clicking" -bool "false"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad "Clicking" -bool "false"
defaults -currentHost write -g com.apple.mouse.tapBehavior -bool "false"

#
# Keyboard
#

# Repeating speed
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

#
# Dock
#

# Icon size (default: 48)
defaults write com.apple.dock "tilesize" -int "36"

# Autohide (default: false)
defaults write com.apple.dock "autohide" -bool "true"

# Autohide animation duration (default: 0.5)
defaults write com.apple.dock "autohide-time-modifier" -float "0.1"

# Autohide delay (default: 0.5)
defaults write com.apple.dock "autohide-delay" -float "0.1"

# Shows recents (default: true)
defaults write com.apple.dock "show-recents" -bool "false"

#
# Screenshot
#

# Disable shadow to window capture (default: true)
defaults write com.apple.screencapture "disable-shadow" -bool "true"

# Save location (default: ~/Desktop)
defaults write com.apple.screencapture "location" -string "~/Desktop"

#
# Finder
#

# Shows extensions (default: false)
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"

# Shows hidden files a.k.a. dotfiles (default: false)
defaults write com.apple.Finder "AppleShowAllFiles" -bool "true"

#
# Menu bar
#

# Datetime formatting (default: "M\u6708d\u65e5(EEE)  H:mm" -> e.g. "4月10日(土) 13:26")
defaults write com.apple.menuextra.clock "DateFormat" -string "\"M/d(EEE) H:mm\""

#
# Mission control
#

# Rearranges automatically (default: true)
defaults write com.apple.dock "mru-spaces" -bool "false"

#
# Safari
#

# Shows Developer in Menu bar
defaults write com.apple.Safari "IncludeDevelopMenu" -bool "true"
defaults write com.apple.Safari "WebKitDeveloperExtrasEnabledPreferenceKey" -bool "true"
defaults write com.apple.Safari "WebKitPreferences.developerExtrasEnabled" -bool "true"

#
# Spotlight
#

# Index order and items to search
defaults write com.apple.spotlight orderedItems -array \
    '{"enabled" = 0; "name" = "APPLICATIONS";}' \
    '{"enabled" = 0; "name" = "SYSTEM_PREFS";}' \
    '{"enabled" = 0; "name" = "DIRECTORIES";}' \
    '{"enabled" = 0; "name" = "PDF";}' \
    '{"enabled" = 0; "name" = "FONTS";}' \
    '{"enabled" = 0; "name" = "DOCUMENTS";}' \
    '{"enabled" = 0; "name" = "MESSAGES";}' \
    '{"enabled" = 0; "name" = "CONTACT";}' \
    '{"enabled" = 0; "name" = "EVENT_TODO";}' \
    '{"enabled" = 0; "name" = "IMAGES";}' \
    '{"enabled" = 0; "name" = "BOOKMARKS";}' \
    '{"enabled" = 0; "name" = "MUSIC";}' \
    '{"enabled" = 0; "name" = "MOVIES";}' \
    '{"enabled" = 0; "name" = "PRESENTATIONS";}' \
    '{"enabled" = 0; "name" = "SPREADSHEETS";}' \
    '{"enabled" = 0; "name" = "SOURCE";}' \
    '{"enabled" = 0; "name" = "MENU_DEFINITION";}' \
    '{"enabled" = 0; "name" = "MENU_OTHER";}' \
    '{"enabled" = 0; "name" = "MENU_CONVERSION";}' \
    '{"enabled" = 0; "name" = "MENU_EXPRESSION";}' \
    '{"enabled" = 0; "name" = "MENU_WEBSEARCH";}' \
    '{"enabled" = 0; "name" = "MENU_SPOTLIGHT_SUGGESTIONS";}'

# Load new settings before rebuilding the index
killall mds > /dev/null 2>&1

# Make sure indexing is enabled for the main volume
sudo mdutil -i on / > /dev/null

# Rebuild the index from scratch
sudo mdutil -E / > /dev/null

#
# Alfred
#

# Setting sync folder
defaults write com.runningwithcrayons.Alfred-Preferences "syncfolder" -string "~/dotfiles"

#
# Termination
#

# Apply changes
killall Dock
killall Finder
