## install homebrew
echo "Downloading homebrew binaries"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## install emacs plus
echo "Downloading Emacs Plus and linking to Applications folder"
brew tap d12frosted/emacs-plus
brew install emacs-plus
## link emacs app to applications folder
ln -s /usr/local/opt/emacs-plus/Emacs.app /Applications/Emacs.app


## setup doom emacs
## install preliminary software
echo "Setting up DOOM emacs"
echo "Installing brew dependencies"
brew install git clang ripgrep fd coreutils markdown shellcheck
## set up doom install repo
echo "Cloning doom emacs to .emacs.d and rinning install executable"
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
## remove the doom folder in $HOME, but should not be created according to doom documentation
rm -rf ~/.doom


echo "Setting up useful brew installations"
## brew installations
brew install htop fish jq trash osx-cpu-temp
brew tap koekeishiya/formulae:
brew install --HEAD yabai
brew cask install brave-browser bettertouchtool kitty
brew services start

## make fish the standard shell
echo "changing shell to fish"
chsh -s /usr/local/bin/fish
