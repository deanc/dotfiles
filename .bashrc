# Tell ls to be colourful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file";
        done;
        unset file;

#export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\u@\h \W]\\$ \[$(tput sgr0)\]"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export LC_ALL="en_US.UTF-8"

export PATH=/usr/local/sbin:$PATH

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/local/mysql/bin
PATH=$PATH:/usr/local/php5/bin

alias gitpack='git archive --format zip --output download_$(date +%d-%m-%Y_%H.%M).zip master'

alias mysql=/usr/local/mysql/bin/mysql
alias m="memcached -d -m 24 -p 11211" 

umask 002
