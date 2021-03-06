## Why do you have these as separate Casks?

* `m-iina` will install the latest version (be it a stable release or a beta release) of `iina` and the binary `iina-cli` aliased to the binary `iina`. Note that the original `iina-beta` Cask was removed from the `homebrew-cask-versions` repo [via this PR](https://github.com/Homebrew/homebrew-cask-versions/pull/8108).
* `m-libreoffice` will install the latest version (be it a stable release or a release candidate) of `libreoffice` and the binary `soffice` aliased to the binary `libreoffice` using the AARNet (Australian Academic and Research Network) as a mirror. Note that the original `libreoffice-rc` Cask was removed from the `homebrew-cask-versions` repo [via this PR](https://github.com/Homebrew/homebrew-cask-versions/pull/8283).
* `m-little-snitch` will install the latest version (be it a stable release or a nightly release) of `little-snitch`. Note that the original `little-snitch-nightly` Cask was removed from the `homebrew-cask-versions` repo [via this PR](https://github.com/Homebrew/homebrew-cask-versions/pull/9604).
* `m-mactex-no-gui` will install the latest version of `mactex-no-gui` using the AARNet as a mirror.
* `m-tex-live-utility` will install the latest version (be it a stable release or a beta release) of `tex-live-utility`.
* `m-tor-browser` will install the latest `en-US`-language version (be it a stable release or an alpha release) of `tor-browser`.
* `m-vlc` will install the latest version of `vlc` and the binary `VLC` aliased to the binary `vlc` using the AARNet as a mirror.

## How do I install these Casks?

`brew install miccal/miccal/<cask>`

Or `brew tap miccal/miccal` and then `brew install <cask>`.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
