
set PATH ~/.nimble/bin $PATH
set PATH ~/usr/local $PATH
set PATH ~/.rbenv/bin $PATH

set -g VIRTUALFISH_COMPAT_ALIASES

if type rbenv > /dev/null
    . (rbenv init -|psub)
    alias betty="~/dev/ruby-dev/betty/main.rb"
end

. $HOME/.config/fish/functions/fish_prompt.fish
. $HOME/.config/fish/functions/ll.fish
. $HOME/.config/virtualfish/virtual.fish
. $HOME/.homesick/repos/homeshick/homeshick.fish
