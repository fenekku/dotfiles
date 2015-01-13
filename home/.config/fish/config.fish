
set -x PATH ~/.nimble/bin $PATH
set -x PATH ~/usr/local $PATH
set -x PATH ~/.rbenv/bin $PATH

set -g VIRTUALFISH_COMPAT_ALIASES

#. (rbenv init -|psub)

. $HOME/.config/fish/functions/fish_prompt.fish
. $HOME/.config/fish/functions/ll.fish
. $HOME/.config/virtualfish/virtual.fish
. $HOME/.homesick/repos/homeshick/homeshick.fish
