# --- Initial Output --- #

# --- Bash Prompt --- #

function git_branch() {
    if [ -d .git ]; then
        printf "%s" "($(git branch 2> /dev/null | awk '/\*/{print $2}'))";
    fi
}

export PS1="[\u@\h(\W)] "

# --- Shell Variables --- #

export HISTFILESIZE=10000 # number of lines saved
export HISTSIZE=500 # number of commands in a session
export HISTCONTROL=ignoredups # don't save dup commands

# --- Aliases --- # 
alias cd="clear; cd"

# PATH:
export PATH="$PATH:/usr/local/texlive/2021/bin/x86_64-linux" # Set up Tex Live
export MANPATH="$MANPATH:/usr/local/texlive/2021/texmf-dist/doc/man"
export INFOPATH="$INFOPATH:/usr/local/texlive/2021/texmf-dist/doc/info"
