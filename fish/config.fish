# set fish_greeting '
# Toby2s Macbook Pro running
#  ██████╗ ███████╗██╗  ██╗
# ██╔═══██╗██╔════╝╚██╗██╔╝
# ██║   ██║███████╗ ╚███╔╝
# ██║   ██║╚════██║ ██╔██╗
# ╚██████╔╝███████║██╔╝ ██╗
# ╚═════╝ ╚══════╝╚═╝  ╚═╝
# '
starship init fish | source



function fish_greeting
    echo (set_color green) Creepuuuhh ----(set_color red) awwwww maaaaaan!
end

#fisher bundle plugin
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

alias l='ls -lah'
