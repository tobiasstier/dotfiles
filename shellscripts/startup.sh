## install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## install emacs plus
brew tap d12frosted/emacs-plus
brew install emacs-plus
## link emacs app to applications folder
ln -s /usr/local/opt/emacs-plus/Emacs.app /Applications/Emacs.app


## download dotfiles
mkdir .config
cd .config
https://github.com/tobiasstier/dotfiles.git .

## setup doom emacs
## install preliminary software
brew install git clang ripgrep fd coreutils markdown shellcheck
## set up doom install repo
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
## remove the doom folder in $HOME, but should not be created according to doom documentation
rm -rf ~/.doom

## brew installations
brew install kitty htop fish jq trash osx-cpu-temp
brew install --HEAD yabai
brew cask install brave-browser bettertouchtool
brew services start

## make fish the standard shell
chsh -s /usr/local/bin/fish
