# kyonrepo

custom arch linux repository for kyon linux projects.
hosted on GitHub Pages, so it can be used by anyone with a normal
`Server = https://...` line in `/etc/pacman.conf`.

## packages

| package          | version | description |
|------------------|---------|-------------|
| kyon-wallpapers  | 1.1.0-1 | GTK4/libadwaita app to browse, cycle through, and download Kyon Linux wallpapers |
| owofetch stfu larp nya opsec blahblahblah|
| nya is special tho |

## adding the repository

append to `/etc/pacman.conf`:

```
[kyonrepo]
SigLevel = Optional TrustAll
Server = https://adachippp.github.io/wallpapers/
```

then refresh:

```
sudo pacman -Sy
```
