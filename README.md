## Why have these separate Casks?

* `m-iina` will install the latest version of `iina`, be it a stable release or a beta release. Note that the original `iina-beta` Cask was removed from the `homebrew-cask-versions` repo [via this PR](https://github.com/Homebrew/homebrew-cask-versions/pull/8108).
* `m-libreoffice` will install the latest version of `libreoffice` using the AARNet (Australian Academic and Research Network) as a mirror, be it a stable release or a release canditate. Note that the original `libreoffice-rc` Cask was removed from the `homebrew-cask-versions` repo [via this PR](https://github.com/Homebrew/homebrew-cask-versions/pull/8283).
* `m-mactex-no-gui` will install the latest version of `TeXLive` using the AARNet (Australian Academic and Research Network) as a mirror.
* `m-tor-browser` will install the latest defualt language version (`en-US`) of `tor-browser` available via [their official mirror](https://dist.torproject.org/torbrowser/), be it a stable release or an alpha release.
* `m-vlc` will install the latest version of `vlc` using the AARNet (Australian Academic and Research Network) as a mirror.


## How do I install these casks?

`brew install miccal/miccal/<cask>`

Or `brew tap miccal/miccal` and then `brew cask install <cask>`.

Or install via URL (which will not receive updates):

```
brew cask install https://raw.githubusercontent.com/miccal/homebrew-miccal/master/Casks/<cask>.rb
```

## Documentation

`brew cask help`, `man brew-cask` or check [Homebrew's documentation](https://docs.brew.sh).
