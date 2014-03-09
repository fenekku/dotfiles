
set -x PATH $PATH ~/.babel/bin
set -x PATH ~/usr/local $PATH

set -g VIRTUALFISH_COMPAT_ALIASES

. $HOME/.config/fish/functions/fish_prompt.fish
. $HOME/.config/fish/functions/ll.fish
. $HOME/.config/virtualfish/virtual.fish
. $HOME/.homesick/repos/homeshick/homeshick.fish