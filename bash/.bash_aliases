# colors
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias ip='ip --color=auto'
alias grep='grep --color=always'
alias pacman='pacman --color auto'

# list
alias la='ls -a'
alias ll='ls -alFh'
alias l=' ls -CFla'
alias l.='ls -A | egrep "^\."'

# grep
alias egrep='grep -E'
alias fgrep='grep -F'

# pacman
alias sps='sudo pacman -S'
alias spr='sudo pacman -R'
alias sprs='sudo pacman -Rs'
alias sprdd='sudo pacman -Rdd'
alias spqo='sudo pacman -Qo'
alias spsii='sudo pacman -Sii'

alias unlock="sudo rm /var/lib/pacman/db.lck"
alias update='sudo pacman -Syyu'

# awk
alias awk1="awk '{print \$1}'"
alias awk2="awk '{print \$2}'"
alias awk3="awk '{print \$3}'"
alias awk4="awk '{print \$4}'"
alias awk5="awk '{print \$5}'"
alias awk6="awk '{print \$6}'"
alias awk7="awk '{print \$7}'"
alias awk8="awk '{print \$8}'"
alias awk9="awk '{print \$9}'"

# cd
alias ..='cd ..'

# df
alias df='df -h'

# free
alias free="free -mt"

# wget
alias wget="wget -c"

# neovim
alias vi=nvim
alias vim=nvim

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

mkdircd ()
{
	mkdir -p $1
	cd $1
}
