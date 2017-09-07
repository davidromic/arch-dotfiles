xrdb -merge -I$HOME ~/.Xresources
feh --bg-scale `ls -d ~/arch-dotfiles/wallpapers/mountains/* | sort -R | head -n 1`
numlockx &
setxkbmap -layout us,hr &
dunst &

exec i3

