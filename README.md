sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply gulluth

What this does:
1. Installs chezmoi and applies the gulluth/dotfiles repo.
2. Installs salt minion.
3. runs salt as a local provisioner.


Salt will target specific hosts for configuration, if building a host from this list, set the hostname of the system prior to installing chezmoi.

`sudo echo 'longhorn' >> /etc/hostname && sudo reboot`

If you miss this step, the minion_id will need to be adjusted as well:

`sudo echo 'longhorn' >> /etc/salt/minion_id`
