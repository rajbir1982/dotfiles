# "$HOME"/.zshrc

# load all files from .shell/zshrc.d directory
if [[ -d ${HOME}/.zshrc.d ]]; then
  for file in "${HOME}"/.zshrc.d/*.zsh; do
    source "$file"
  done
fi

# load all files from .shell/rc.d directory
if [[ -d ${HOME}/.rc.d ]]; then
  for file in "${HOME}"/.rc.d/*.sh; do
    source "$file"
  done
fi

# Load antibody
if [[ -f ${HOME}/.antibody_plugins.sh ]]; then
    ANTIBODY_HOME="$(antibody home)"
    # Load Oh-My-Zsh varaibles first
    ZSH="${ANTIBODY_HOME}/https-COLON--SLASH--SLASH-github.com-SLASH-ohmyzsh-SLASH-ohmyzsh"
    DISABLE_AUTO_UPDATE="true"
    source "${HOME}"/.antibody_plugins.sh
fi

# Load secure variables or "things" such as aliases
if [[ -f ${HOME}/.private.zsh ]]; then
    source "${HOME}"/.private.zsh
fi

# Completion needs to be here...
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

if [[ -f /usr/local/etc/bash_completion.d/az ]]; then
    source /usr/local/etc/bash_completion.d/az
fi

# Note: there is pyenv configuration in ~/.zshrc.d/pyenv.zsh also
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
