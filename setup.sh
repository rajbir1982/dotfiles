#!/usr/bin/env bash

if ! command -v antibody &> /dev/null
then
    echo "antibody is required for this zsh configuration"
    exit
fi

# Put .stowrc in place first
stow -R -t $HOME stow

# Now stow all directories
stow -R -t $HOME */

cd zsh
antibody bundle < antibody_plugins.txt > ~/.antibody_plugins.sh
git clone https://github.com/mantoso/pyenv-default-requirements.git $(pyenv root)/plugins/pyenv-default-requirements