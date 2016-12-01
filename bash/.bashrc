# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions


unset GNOME_DESKTOP_SESSION_ID
PATH=$PATH:./

export DATEMSK=/usr/timetemplate.txt

export PATH

PS1="[\u \W]\$ "
export PS1
