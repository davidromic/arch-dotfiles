xrandr --output VGA-1 --off --output HDMI-2 --mode 1920x1080 --pos 1080x395 --rotate normal --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate left
xrdb -merge -I$HOME ~/.Xresources
feh --bg-fill `ls -d ~/arch-dotfiles/wallpapers/mountains/* | sort -R | head -n 1`
numlockx &
setxkbmap -layout us,hr &

exec i3

