
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ls='ls -la'
alias ll='ll -la'
alias c='clear'
alias grepc='grep --color=always'
alias grep='grep --color=auto'

mygrep() { grep -i "$@"; }

function mygrep() 
{
  grep -i "$@"
}

function mkcd() 
{
  mkdir $1
  cd $1
}

tim() { touch \"\$1\" && nvim \"\$1\";}

if [ "$USER" = "reivlo" ]; then
	export PS1="[\h:\w\$] "
else
	export PS1="[\u@\h:\w\$] "
fi

