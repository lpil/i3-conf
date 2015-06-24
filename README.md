i3-config
=========

My i3 desktop.

Tested on Debian Jessie

## Linking dotfiles

Homeshick is awesome.

```sh
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
~/.homesick/repos/homeshick/bin/homeshick clone git@github.com:lpil/i3-config
~/.homesick/repos/homeshick/bin/homeshick link i3-config
bash
homeshick clone git@github.com:lpil/vimrc
homeshick link vimrc
```

## Dependencies

| What | Which |
| ---- | ----- |
| font | Droid |
| gtk icon theme | gnome-brave |
| gtk theme | Adwaita |
| terminal | rxvt unicode 256 |
| wm | i3 |

### Recommended
| What | Which |
| ---- | ----- |
| clipboard manager | clipit |
| cursor theme | DMZ |
| editor | vim |
| eye balm | redshift |
| file manager | SpaceFM |
| media player | mpv |
| media scrobbling | mpdscribble |
| mouse hider | unclutter |
| music player | mpd + mpc (+ ncmpcpp) |
| notifications | dunst |
| notifications | libnotify-bin (notify-send) |
| web browser | Firefox with Vimperator |
