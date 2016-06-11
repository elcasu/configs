# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

PS1='\u@\h:\w$ '
# Make bash check its window size after a process completes
shopt -s checkwinsize

##### Aliases #####

# Git
alias gdiff='git log --pretty=format:"[%h] %ae, %ar: %s" --stat'

# System commands shorcuts
alias ls='ls -G'
alias ll='ls -l'

[ -r "/etc/bashrc_$TERM_PROGRAM" ] && . "/etc/bashrc_$TERM_PROGRAM"

# Bash completion for git
source /usr/local/etc/bash_completion.d/git-completion.bash
