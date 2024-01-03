# dotfiles

My [chezmoi](https://www.chezmoi.io/) compatible dotfiles.

## Meta
*TODO*
- [x] Define the workflow
- [x] Go through all dotfiles in this repo and convert to chezmoi
- [x] push
- [ ] Setup the ansible setup per https://github.com/logandonley/dotfiles
- [ ] push
- [ ] fish plugins
- [ ] profiles

## Workflow
*just once on each computer*
- Install chezmoi
- initialize it: `chezmoi init --ssh fenekku/dotfiles --branch chezmoi_transition`

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

## Setup
