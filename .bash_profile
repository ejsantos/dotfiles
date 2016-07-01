
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"
PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w$ $GREEN\$(parse_git_branch)$NO_COLOR"

export VISUAL=vim
export EDITOR="$VISUAL"

LANG=en_US.UTF-8
LC_CTYPE=en_US.UTF-8

# alias
alias tmux='tmux -2'
