#!/bin/bash

if [[ ! -x "/usr/bin/salt-minion" ]]; then
    # Ensure keyrings dir exists
    sudo mkdir -p /etc/apt/keyrings
    
    # Download SaltProject public key
    curl -fsSL https://packages.broadcom.com/artifactory/api/security/keypair/SaltProjectKey/public | sudo tee /etc/apt/keyrings/salt-archive-keyring.pgp
    
    # Create SaltProject apt repo target configuration
    curl -fsSL https://github.com/saltstack/salt-install-guide/releases/latest/download/salt.sources | sudo tee /etc/apt/sources.list.d/salt.sources
    
    # Update package sources
    sudo apt update

    # Install LTS salt minion
    sudo apt install -y salt-common=3006.* salt-minion=3006.*

    # Pin LTS version of salt
    sudo apt-mark hold salt-minion
fi

# Provision system using masterless salt
sudo salt-call --file-root=/home/${USER}/.provision --local state.highstate
