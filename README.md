Arch Linux
==========

master branch is for my home PC, a single 24" FHD monitor.

2ultrawide_mon is for my work PC which, surprisingly, has 2 ultrawide monitors, 2560*1080.

_Note: The differences are negligible, some are due to me screwing up font installation, and being lazy and using different icon font, or simply using a different wallpaper. Other differences are a bit more significant, like splitting odd and even workspaces among monitors. I keep them both up to date, so you can simply git diff the branches._

### Screenshots
Check the screenshots folder


## Using these dotfiles

I don't really suggest blindly copying this, when something breaks, and it will at one point due to package maintainer breaking compatibility, you won't be able to fix it easily. I suggest you try it out piece by piece, hack the i3 config, then Termite, rofi, NeoVIM etc.

my setup:
* i3-gaps
* NeoVIM + vim-plug (check init.vim for plugins)
* Termite
* zsh (Oh-My-Zsh)
* rofi
* compton
* i3blocks
* cmus

and a bunch of other programs installed, some used, some just sitting there. e.g. bash configs are abandoned, I rarely use bash as a shell.

After installing, symlink the configs from repo, project root represents your `$HOME` (`~`) directory.

