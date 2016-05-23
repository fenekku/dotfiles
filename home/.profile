# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# Added for the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
#From last checked to first checked
export PATH="$HOME/usr/local:$PATH"
#Below is fine as long as directory structure is kept the same across machines
export PATH="$HOME/dev/nim-dev/nim/bin:$PATH"
export PATH="$HOME/.nimble/bin:$PATH"
export PATH="$HOME/bin:$PATH"