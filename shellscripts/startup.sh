## install homebrew
echo "Downloading homebrew binaries"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## install emacs plus
echo "Downloading Emacs Plus and linking to Applications folder"
brew tap d12frosted/emacs-plus
brew install emacs-plus
## link emacs app to applications folder
ln -s /usr/local/opt/emacs-plus/Emacs.app /Applications/Emacs.app


echo "Setting up useful brew installations"
## brew installations
brew install htop jq trash osx-cpu-temp tmux
brew tap koekeishiya/formulae:
brew install --HEAD yabai
sudo yabai --install-sa
brew cask install bettertouchtool kitty qutebrowser
brew services start


