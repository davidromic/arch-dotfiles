#
# ~/.zprofile
#
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
	exec startx
fi


