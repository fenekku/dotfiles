# dotfiles

My [chezmoi](https://www.chezmoi.io/) compatible dotfiles.

## Meta
*TODO*
- [x] Define the workflow
- [x] Go through all dotfiles in this repo and convert to chezmoi
- [x] push
- [x] Setup the ansible setup per https://github.com/logandonley/dotfiles
- [x] push
- [x] fish plugins
- [x] drive client
- [x] starship
- [ ] zellij
- [ ] git split diff
- [ ] python still not set properly
- [ ] test on other clean install
- [ ] profiles

## Workflow
*Once on each computer*
- Install chezmoi: `sh -c "$(wget -qO- get.chezmoi.io)"`
- initialize it: `chezmoi init --ssh fenekku/dotfiles --branch chezmoi_transition`
- Apply changes: `chezmoi apply`

*track an existing file*
```bash
chezmoi add `<existing file>`
```

*apply all changes*

```bash
chezmoi apply
```

*go to chezmoi source directory*

```bash
chezmoi cd
```

*use git to add/commit/push files*
Instructions not specific to chezmoi so skipped (understood how to do so already)


*pull and apply changes*

```bash
chezmoi update
```

*setup new machine and apply changes*

```bash
chezmoi init --ssh fenekku/dotfiles --branch chezmoi_transition --apply
```

## Rotailles
export PATH="$HOME/.poetry/bin:$PATH"
-# BEGIN ANSIBLE MANAGED BLOCK
-export PYENV_ROOT="$HOME/.pyenv"
-[[ -d $PYENV_ROOT/bin ]] && export PATH=$PYENV_ROOT/bin:$PATH
-eval "$(pyenv init -)"
-# END ANSIBLE MANAGED BLOCK
-
-# Created by `pipx` on 2024-01-20 20:54:32
-export PATH="$PATH:/home/guillaume/.local/bin"
