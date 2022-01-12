if systemctl -q is-active graphical.target \
	&& [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]] \
	&& [[ -z "$TMUX" ]]
then
  startx
fi
