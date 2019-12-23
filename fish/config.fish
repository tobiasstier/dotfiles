export VIMINIT='let $MYVIMRC="~/.config/nvim/init.vim" | source $MYVIMRC'

# set fish_greeting '
# Toby2s Macbook Pro running
#  ██████╗ ███████╗██╗  ██╗
# ██╔═══██╗██╔════╝╚██╗██╔╝
# ██║   ██║███████╗ ╚███╔╝
# ██║   ██║╚════██║ ██╔██╗
# ╚██████╔╝███████║██╔╝ ██╗
# ╚═════╝ ╚══════╝╚═╝  ╚═╝
# '

function fish_greeting
    echo (set_color blue) Here is your message in (set_color red) red(set_color white).
end


export FZF_DEFAULT_COMMAND='ag --hidden --ignore Library --ignore Pictures --ignore Music --ignore .cache --ignore .local -g ""'

thefuck --alias | source

#fisher bundle plugin
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

alias l='ls -lah'
