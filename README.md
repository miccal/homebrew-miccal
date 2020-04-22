## Why do you have these as separate Casks?

* `m-iina` will install the latest version of `iina`, be it a stable release or a beta release. Note that the original `iina-beta` Cask was removed from the `homebrew-cask-versions` repo [via this PR](https://github.com/Homebrew/homebrew-cask-versions/pull/8108).
* `m-libreoffice` will install the latest version of `libreoffice` (with only the `soffice` binary) using the AARNet (Australian Academic and Research Network) as a mirror, be it a stable release or a release candidate. Note that the original `libreoffice-rc` Cask was removed from the `homebrew-cask-versions` repo [via this PR](https://github.com/Homebrew/homebrew-cask-versions/pull/8283).
* `m-mactex-no-gui` will install the latest version of only the `TeX Live` part of `MacTeX` using the AARNet as a mirror.
* `m-tex-live-utility` will install the latest version of `tex-live-utility`, be it a stable release or a beta release.
* `m-tor-browser` will install the latest `en-US`-language version of `tor-browser` available [via their official mirror](https://dist.torproject.org/torbrowser/), be it a stable release or an alpha release.
* `m-vlc` will install the latest available version of `vlc` using the AARNet as a mirror.

## How do I install these casks?

`brew install miccal/miccal/<cask>`

Or `brew tap miccal/miccal` and then `brew cask install <cask>`.

Or install via URL (which will not receive updates):

```
brew cask install https://raw.githubusercontent.com/miccal/homebrew-miccal/master/Casks/<cask>.rb
```

## Documentation

`brew cask help`, `man brew-cask` or check [Homebrew's documentation](https://docs.brew.sh).
