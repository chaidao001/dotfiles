ln -s ~/dotfiles/.zshrc ~/
ln -s ~/dotfiles/.vimrc ~/
ln -s ~/dotfiles/.tmux.conf ~/
ln -s ~/dotfiles/.vim ~/
ln -s ~/dotfiles/.ansible.cfg ~/
ln -s ~/dotfiles/sublime/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
ln -s ~/dotfiles/karabiner/karabiner.json ~/.config/karabiner
ln -s ~/dotfiles/mac/com.apple.symbolichotkeys.plist ~/Library/Preferences

# sshrc
ln -s ~/dotfiles/.sshrc ~/
ln -s ~/dotfiles/.sshrc.d ~/

# brew packages
brew install sshrc
brew install gnu-tar
brew install reattach-to-user-namespace
brew install icdiff
brew install rtv

# modify plist files
# dock pop up time
defaults write com.apple.dock autohide-time-modifier -int 0

# disable accents when holding keys
defaults write -g ApplePressAndHoldEnabled -bool false

# key repeat speed
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain KeyRepeat -float 2

