i3-conf
=======

My i3 desktop.

## Linking dotfiles

Homeshick is awesome.

```sh
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
~/.homesick/repos/homeshick/bin/homeshick clone git@github.com:lpil/i3-config
~/.homesick/repos/homeshick/bin/homeshick link i3-config
```

Log in again. You'll need to install a ton of stuff before everything works.

```
homeshick clone git@github.com:lpil/vimrc
homeshick link vimrc
```

## Dependencies

| What | Which |
| ---- | ----- |
| font | Droid |
| terminal | rxvt unicode 256 |
| wm | i3 |

### Recommended
| What | Which |
| ---- | ----- |
| clipboard manager | clipit |
| cursor theme | DMZ |
| editor | vim |
| eye balm | redshift |
| media player | mpv |
| media scrobbling | mpdscribble |
| mouse hider | unclutter |
| music player | mpd + mpc (+ ncmpcpp) |
