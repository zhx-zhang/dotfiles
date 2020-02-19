# tmux alias
alias tnew='tmux new -s'
alias ta='tmux a'
alias tapp='tmux a -t'
alias tkill='tmux kill-session -t'

# cd alias
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# git alias
alias gs='git status'
alias gc='git commit -a -m'
alias ga='git add'
alias gl='git log --oneline --decorate'
alias gpull='git pull --rebase origin'
alias gpush='git push origin'

# override alias
alias mkdir='mkdir -p'
alias mv='mv -i'

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
    ssh-add ~/.ssh/$(echo $HOSTNAME)_ed25519
}

# switch to bash on server
sbash () {
    ssh $1 -t "bash"
}

# dotfile config
add_df () {
    mv "~/$1" "~/.dotfiles/$1"
    ln -s "~/.dotfiles/$1" "~/$1"
    cd ~/.dotfiles
    git add "$1"
    git commit -m "add file $1"
    cd -
}
