# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Make bash append rather than overwrite the history on disk
shopt -s histappend

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



#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/Wiggy/.gvm/bin/gvm-init.sh" ]] && source "/Users/Wiggy/.gvm/bin/gvm-init.sh"
