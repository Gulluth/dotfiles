sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply gulluth

What this does:
1. Installs chezmoi and applies the gulluth/dotfiles repo.
2. Installs salt minion.
3. runs salt as a local provisioner.
