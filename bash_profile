alias ls="ls -G" #List files with color
alias lsa="ls -FlahG " #List files in extended format with color
alias grep="grep --color"
alias cdw="cd ~/ws/"

#### COLORS ####

## dark background: uppercase;
## light background: lowercase
gray='\[\e[0;30m\]'
GRAY='\[\e[1;30m\]'
red='\[\e[0;31m\]'
RED='\[\e[1;31m\]'
green='\[\e[0;32m\]'
GREEN='\[\e[1;32m\]'
yellow='\[\e[0;33m\]'
YELLOW='\[\e[1;33m\]'
blue='\[\e[0;34m\]'
BLUE='\[\e[1;34m\]'
cyan='\[\e[0;36m\]'
CYAN='\[\e[1;36m\]'
violet='\[\e[0;35m\]'
VIOLET='\[\e[1;35m\]'
white='\[\e[0;37m\]'
WHITE='\[\e[1;37m\]'
NC='\[\e[0m\]' # No Color
# make sure to end with "NC" to restore normal coloring

tma() {
    tmux attach -t $1
}

tmn() {
    tmux new-session -s $1
}

#### GIT BRANCH PS1 ####
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\n${NC}[${blue}\\u${WHITE}@${YELLOW}\h${NC}] ${NC}\w ${GREEN}\$(parse_git_branch) \n${NC}$ "
