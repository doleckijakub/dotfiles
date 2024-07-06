# ~/.bashrc: executed by bash(1) for non-login shells.

[[ $- != *i* ]] && return

export EDITOR=nvim
export VISUAL=nvim

export XDG_CONFIG_HOME="$HOME/.config"

# if [[ "xterm-kitty" == $TERM ]]; then
# 	kitty +kitten icat --align left `find ~/.pokemon | shuf -n 1`
# fi

shopt -s globstar
shopt -s checkwinsize
shopt -s autocd
shopt -s cdspell
shopt -s cmdhist
shopt -s dotglob
shopt -s histappend
shopt -s expand_aliases

HISTSIZE=1000
HISTCONTROL=ignoreboth
HISTFILESIZE=2000

export _JAVA_AWT_WM_NONREPARENTING=1

tabs 4

source $HOME/.bash_aliases

set-ps1() {
	export GIT_PS1_SHOWDIRTYSTATE=1
	source ~/.git-prompt.sh

	# cat /dev/urandom | head -n 1 | md5sum | awk '{print $1}' > ~/.bash_ps1_hash # uncomment to change ps1 colors
	local ps1_hash=$(cat ~/.bash_ps1_hash)
	
	local Cr="\[\033[0;0m\]"
	local C0="\[\033[1;37m\]"
	local C1="\[\033[1;31m\033[38;2;$((16#${ps1_hash:0:2}));$((16#${ps1_hash:2:2}));$((16#${ps1_hash:4:2}))m\]"
	local C2="\[\033[1;31m\033[38;2;$((16#${ps1_hash:6:2}));$((16#${ps1_hash:8:2}));$((16#${ps1_hash:10:2}))m\]"
	local C3="\[\033[1;33m\]"

	local git_ps1="$C3\$(__git_ps1 ' %s')"
	local L1="\n$C1┌─($C2\u@\h$C1)-[$C0\w$C1]$git_ps1"
	local L2="\n$C1└──$C2\$$Cr "
	export PS1="$L1$L2"
}

set-ps1

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
  fi
fi

export PATH="$PATH:/home/jacob/sat"
source /usr/share/doc/pkgfile/command-not-found.bash
