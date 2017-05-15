Package list
============

_Note: some packages might be missing, some **might** conflict (like fonts), I haven't really tested this out._

```
pacstrap /mnt base base-devel sudo neovim git wget unzip
```

```bash
sudo pacman -S xorg xorg-xinit compton termite clang llvm feh xterm openssh thunar pulseaudio pulseaudio-alsa pavucontrol lxappearance ranger vifm screenfetch zsh cmus ttf-dejavu arm-none-eabi-gcc noto-fonts nss-mdns avahi xclip xsel gsimplecal redshift

# after installing yaourt install some packages from AUR
yaourt -S i3-gaps-git rofi i3blocks i3status google-chrome slack-desktop skypeforlinux-bin numlockx lyvi-git xkblayout-state visual-studio-code ttf-ms-fonts ttf-font-awesome srecord xkblayout-state neofetch

# install oh my zhs and vim-plug
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```
