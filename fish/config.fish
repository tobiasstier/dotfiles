export VIMINIT='let $MYVIMRC="~/.config/vim/vimrc" | source $MYVIMRC'


fish_vi_key_bindings
thefuck --alias | source 

#fisher bundle plugin
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end










alias v='vim'
alias config="vim ~/.config"
alias l='ls -lah'
