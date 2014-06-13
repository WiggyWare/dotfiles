# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="clean"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

echo "Interactive?"
# If not running interactively, don't do anything
#[[ "$-" != *i* ]] && return

# Make bash append rather than overwrite the history on disk
echo "histappend for zsh?"
#shopt -s histappend

#Set links to the windows directorys
if ! [ -L ~/scripts ]; then ln -sd /cygdrive/c/Users/a249261/scripts/ ~/scripts; fi
if ! [ -L ~/workspace ]; then ln -sd /cygdrive/c/Users/a249261/workspace/ ~/workspace; fi
if ! [ -L ~/m2 ]; then ln -sd /cygdrive/c/Users/a249261/.m2/ ~/m2; fi
if ! [ -L ~/Desktop ]; then ln -sd /cygdrive/c/Users/a249261/Desktop/ ~/Desktop; fi

# Set PATH so it includes scripts 
if [ -d "${HOME}/scripts" ] ; then
    PATH="${HOME}/scripts:${HOME}/scripts/java:${PATH}"
fi

# Setup SSH 
export SSH_REMOTE_PROFILE_DIR=~/.ssh/ssh-remote-profile
. ${SSH_REMOTE_PROFILE_DIR}/start-ssh-agent.sh
#alias sshs=${SSH_REMOTE_PROFILE_DIR}/ssh-personalized-session.sh "$@"
alias sshs=${SSH_REMOTE_PROFILE_DIR}/ssh-select-from-saved.sh

# Go to home directory
cd ~

# some personalized env vars
export WINTMP="/cygdrive/c/Temp/"
#export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\D{%H:%M} $ "

export AS_USER=$USERNAME
export AS_HOST=$HOSTNAME

source ~/.zsh_common

alias reset='reset;echo -e "\033c"'
alias tree='tree --charset=ASCII'

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/Wiggy/.gvm/bin/gvm-init.sh" ]] && source "/Users/Wiggy/.gvm/bin/gvm-init.sh"
