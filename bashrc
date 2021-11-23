# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# User-created entries:

# print A4 man pages, Usage: "manps <manpage> | lpr"
alias manps="man -Tps -P-a4"

# lpr1 print single-sided A4
alias lpr1="lpr -o media=a4"

# lpr print duplexed A4
alias lpr="lpr -o media=a4 -o sides=two-sided-long-edge"

# touchdate - create a file with timestamp appended
function touchdate () { touch $1-$(date +%s); }


