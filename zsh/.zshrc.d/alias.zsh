# -*- mode: zsh -*-

export PROJECTS_DIR=$HOME/Projects

# Mantoso
export MANTOSO_HOME=$PROJECTS_DIR/mantoso

# Nocbot
export NOCBOT_HOME=$PROJECTS_DIR/nocbot

# reavon
alias cdme="cd $Projects_DIR/reavon"

# Ansible
ANSIBLE_ROLES_PATH=$NOCBOT_HOME/ansible/roles

alias ssh="ssh -A"
alias awsinfo="awsinfo.py"

# what is my ip?
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

# Directory aliases
alias cda="cd $NOCBOT_HOME/ansible"
alias cdg="cd $PROJECTS_DIR/reavon/git-repos"
alias cdp="cd $PROJECTS_DIR"
alias cdr="cd $ANSIBLE_ROLES_PATH"

alias vi="vim"
alias cdod="cd /mnt/c/Users/tracp/OneDrive"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='colordiff'

alias winhosts='vi /mnt/c/Windows/System32/drivers/etc/hosts'
