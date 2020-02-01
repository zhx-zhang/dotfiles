# tmux alias
alias tnew='tmux new -s'
alias ta='tmux a'
alias tapp='tmux a -t'
alias tkill='tmux kill-session -t'

# some shortcut function
wdin () {
    pwd > ~/.mydir
}

wdout () {
    cd "$(cat ~/.mydir)"
}

# for ssh agent
agstart () {
    eval `ssh-agent`
    ssh-add
}
