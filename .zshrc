# My zsh profile. System-wide configuration is in /etc/zshrc.

# BIG history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000

# I WANT TO SEE MY HISTORY IN REAL TIME
setopt INC_APPEND_HISTORY

# Turn off the stupid Ctrl-S/Ctrl-Q thing that's a relic from line printers
#
stty -ixon

# Aliases
#
# history should always be extended
alias history='history -E'

# grep shortcuts
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
alias ls='ls -G'                              # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #
alias lla='ls -la'
#
# rm shortcuts
alias rf='rm -f'                              # force delete
alias rr='rm -rf'                             # force recursive delete
#
# git
# h/t @rakyll
alias undo='git reset HEAD~'


# pyenv configuration 
export PATH=~/.pyenv/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Apache Spark configuration
export SPARK_HOME=/usr/local/Cellar/apache-spark/2.4.4/libexec
export PYTHONPATH=/usr/local/Cellar/apache-spark/2.4.4/libexec/python/:$PYTHONP$

# Git zsh completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit
