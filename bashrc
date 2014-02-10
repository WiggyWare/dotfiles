export SSH_REMOTE_PROFILE_DIR=~/.ssh/ssh-remote-profile
alias sshs='$SSH_REMOTE_PROFILE_DIR/ssh-select-from-saved.sh'

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/Wiggy/.gvm/bin/gvm-init.sh" ]] && source "/Users/Wiggy/.gvm/bin/gvm-init.sh"
