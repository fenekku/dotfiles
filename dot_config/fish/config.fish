# local bin - has to be set first because
# commands below depend on it being in the PATH to be found
set --export PATH ~/bin $PATH

# Commands to run in interactive sessions can go here
if status is-interactive
    # starship prompt
    starship init fish | source

    # zellij
    eval (zellij setup --generate-auto-start fish | string collect)
end

# mise
fish_add_path ~/.local/share/mise/shims

# rust
if not contains "$HOME/.cargo/bin" $PATH
    # Appengin path in case a system-installed rustc needs to be overridden
    set -x PATH $PATH "$HOME/.cargo/bin"
end

# what is this?
# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"

# zoxide
zoxide init fish | source

# pyenv
set --export PYENV_ROOT $HOME/.pyenv
set --export PATH $PYENV_ROOT/bin $PATH
pyenv init - | source

# pipenv
set --export PIPENV_VENV_IN_PROJECT 1


# Docker
alias containers "docker ps --all --format 'table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Image}}'"
alias dc docker-compose

# if test -d "$HOME/Downloads/Packages/platform-tools"
#     set --export PATH "$HOME/Downloads/Packages/platform-tools" $PATH
# end

# pipx
set --export PIPX_DEFAULT_PYTHON /home/guillaume/.pyenv/shims/python
set --export PATH ~/.local/bin $PATH
