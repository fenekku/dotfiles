
# Place your environment variables in ~/.profile
# that file is read on graphical start

set PATH ~/.rbenv/bin $PATH
# WANT: one place to set environment variables accessible to ALL software
# APPARENT SOLUTION: put those in ~/.profile
# PROBLEM: this works for everything except fish itself!
#          `if type rbenv` does not find rbenv even though it is
#          in the PATH by ~/.profile
# STOPGAP SOLUTION: set ~/.rbenv/bin here
# REMAINING PROBLEM: ~/.rbenv/bin and thus the shims are not seen outside
#                    a fish shell

set PATH $HOME/bin $PATH

if type rbenv > /dev/null
    . (rbenv init -|psub)
    alias betty="~/dev/ruby-dev/betty/main.rb"
end

. $HOME/.config/fish/functions/fish_prompt.fish
. $HOME/.config/fish/functions/ll.fish
set -g VIRTUALFISH_COMPAT_ALIASES
. $HOME/.config/virtualfish/virtual.fish
. $HOME/.homesick/repos/homeshick/homeshick.fish
