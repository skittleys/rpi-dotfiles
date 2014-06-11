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

# easily call LESS, and make it act like cat if output < 1 screen
alias l='less -RXF'

# check RPi's temp
alias checktemp='vcgencmd measure_temp'
alias gettemp='vcgencmd measure_temp'

# unarchive a tar file
# for .tar, just use untar
# for tar.gz, use untar -z
alias untar='tar -xvf'

# readable commands
alias dmesg="dmesg -T|sed -e 's|\(^.*'`date +%Y`']\)\(.*\)|\x1b[0;34m\1\x1b[0m - \2|g'"
alias df='df -h'
alias du='du -h'

#colourize less and man pages
export LESS_TERMCAP_mb=$'\E[01;31m' # enter blinking mode – red
export LESS_TERMCAP_md=$'\E[01;35m' # enter double-bright mode – bold, magenta
export LESS_TERMCAP_me=$'\E[0m' # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$'\E[0m' # leave standout mode
export LESS_TERMCAP_so=$'\E[01;33m' # enter standout mode – yellow
export LESS_TERMCAP_ue=$'\E[0m' # leave underline mode
export LESS_TERMCAP_us=$'\E[04;36m' # enter underline mode – cyan


############################
## APT-related
############################
alias inst='sudo apt-get install'
alias asou='apt-get source'
alias acs='apt-cache search'
alias acsh='apt-cache show'
alias acsp='apt-cache showpkg'
alias acshp='apt-cache showpkg'
alias ad='sudo apt-get update'
alias ag='sudo apt-get upgrade'
alias findpkg='dpkg -l | grep'
alias acp='apt-cache policy'
alias abd='sudo apt-get build-dep'
alias rdep='apt-cache rdepends'

## aptitude
alias sapt='sudo aptitude'

# see versions available from repos in sources.list etc
alias mad='apt-cache madison'

# do all updating
alias update='sudo apt-get update && sudo apt-get upgrade && sudo rpi-update'



