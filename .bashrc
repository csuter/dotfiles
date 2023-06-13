# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

export EDITOR='nvim'
export C_VIM_TEMP_FILE=/tmp/cvim.tmp
export TERM=xterm-256color

# If not running interactively, don't do anything else
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=20000000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

bind "set enable-bracketed-paste off"

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
  debian_chroot=$(cat /etc/debian_chroot)
fi

. ~/.make_prompt.sh

# Nicer ctrl-w behavior
stty werase undef
bind '"\C-w":unix-filename-rubout'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -d ~/.bash_completion.d ] ; then
  # source compat completion directory definitions
  for i in $(LC_ALL=C command ls ~/.bash_completion.d); do
    i=~/.bash_completion.d/$i
    . "$i"
  done
fi

if [ -f ~/.bashcolors ] ; then
  . ~/.bashcolors
fi

function is_my_parent_process_sshd() {
  my_pid=$$

  parent_pid=$(
      ps -ejf \
        | grep bash \
        | awk -v my_pid="$my_pid" '$2==my_pid{print $3}')

  parent_process=$(
      ps ax -o pid,comm \
        | awk -v parent_pid="$parent_pid" '$1==parent_pid{print $2}')

  [ "$parent_process" == "sshd" ]
}

function tmpve() {
  args=${@:-'-p python3'}
  tmpdir=$(mktemp -d /tmp/XXXX.ve)
  (cd $tmpdir && virtualenv $args .)
  . "$tmpdir/bin/activate"
}

