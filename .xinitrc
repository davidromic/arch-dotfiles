xrdb -merge -I$HOME ~/.Xresources
feh --bg-scale `ls -d ~/arch-dotfiles/wallpapers/mountains/* | sort -R | head -n 1`
numlockx &
xset -dpms
setxkbmap -layout us,hr &

exec i3

