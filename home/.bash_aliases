# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -A --file-type --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -lAh --file-type'
alias la='ls -A'
alias l='ls -C --file-type'

# check RPi's temp
alias checktemp='vcgencmd measure_temp'
alias gettemp='vcgencmd measure_temp'

# see versions available from repos in sources.list etc
alias apt-vsn='apt-cache madison'

# see all versions available from all ubuntu repos, not just the latest
alias apt-vsn-all='rmadison'

# do all updating
alias update='sudo apt-get update && sudo apt-get upgrade && sudo rpi-update'

# easily find installed packages
alias findpkg='dpkg -l | grep'

# unarchive a tar file
# for .tar, just use untar
# for tar.gz, use untar -z
alias untar='tar -xvf'

# readable dmesg
alias dmesg="dmesg -T|sed -e 's|\(^.*'`date +%Y`']\)\(.*\)|\x1b[0;34m\1\x1b[0m - \2|g'"

# -F flag makes less act like cat if output is less than 1 page
alias less='less -XF'

#colourize less and man pages
export LESS_TERMCAP_mb=$'\E[01;31m' # enter blinking mode – red
export LESS_TERMCAP_md=$'\E[01;35m' # enter double-bright mode – bold, magenta
export LESS_TERMCAP_me=$'\E[0m' # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$'\E[0m' # leave standout mode
export LESS_TERMCAP_so=$'\E[01;33m' # enter standout mode – yellow
export LESS_TERMCAP_ue=$'\E[0m' # leave underline mode
export LESS_TERMCAP_us=$'\E[04;36m' # enter underline mode – cyan
