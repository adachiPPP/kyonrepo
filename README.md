# kyonrepo

Custom Arch Linux repository for Kyon Linux projects.
Hosted on GitHub Pages, so it can be used by anyone with a normal
`Server = https://...` line in `/etc/pacman.conf`.

## Packages

| Package          | Version | Description |
|------------------|---------|-------------|
| kyon-wallpapers  | 1.1.0-1 | GTK4/libadwaita app to browse, cycle through, and download Kyon Linux wallpapers |

## Adding the repository

Append to `/etc/pacman.conf`:

```
[kyonrepo]
SigLevel = Optional TrustAll
Server = https://adachippp.github.io/wallpapers/
```

Then refresh and install:

```
sudo pacman -Sy
sudo pacman -S kyon-wallpapers
```

> `SigLevel = Optional TrustAll` is fine for an unsigned personal repo.
> If you start signing packages, switch it to `Required DatabaseOptional`.

## Local copy

If you cloned this repo locally, you can point pacman at it directly:

```
[kyonrepo]
SigLevel = Optional TrustAll
Server = file:///home/you/kyonrepo
```

or run the helper script (adds the repo to pacman.conf and installs):

```
./setup-repo.sh
./setup-repo.sh https://adachippp.github.io/wallpapers/   # hosted URL
```

## Maintenance (adding a new version)

```
cd ~/kyonrepo
cp /path/to/package.pkg.tar.zst .
repo-add kyonrepo.db.tar.gz package.pkg.tar.zst
git add -A
git commit -m "Add package 1.1.0-1"
git push          # publishes to GitHub Pages
```
