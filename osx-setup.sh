#!/usr/bin/env bash

echo 'Administrator password:'
sudo -v

defaults write com.apple.finder AppleShowAllFiles -bool true
echo 'Show all files - Enabled'

defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
echo 'Save to disk, not to icloud - Enabled'

sudo pmset -a hibernatemode 0
echo 'Hibernation - Disabled'

sudo rm -f /private/var/vm/sleepimage
sudo touch /private/var/vm/sleepimage
sudo chflags uchg /private/var/vm/sleepimage
echo 'Sleep image file removed to save disk space'

softwareupdate -ia --verbose
