## Why do you have these as separate Casks?

* `m-libreoffice` will install the latest version (be it a stable release or a release candidate) of `libreoffice` and the binary `soffice` aliased to the binary `libreoffice` using the AARNet (Australian Academic and Research Network) as a mirror. Note that the original `libreoffice-rc` Cask was removed from the `homebrew-cask-versions` repo [via this PR](https://github.com/Homebrew/homebrew-cask-versions/pull/8283).
* `m-little-snitch` will install the latest version (be it a stable release or a nightly release) of `little-snitch`. Note that the original `little-snitch-nightly` Cask was removed from the `homebrew-cask-versions` repo [via this PR](https://github.com/Homebrew/homebrew-cask-versions/pull/9604).
* `m-mactex-no-gui` will install the latest version of `mactex-no-gui` using the AARNet as a mirror.
* `m-tex-live-utility` will install the latest version (be it a stable release or a beta release) of `tex-live-utility`.
* `m-tor-browser` will install the latest `en-US`-language version (be it a stable release or an alpha release) of `tor-browser`.
* `m-vlc` will install the latest version of `vlc` and the binary `VLC` aliased to the binary `vlc` using the AARNet as a mirror.

These may be installed via

`brew install miccal/miccal/<cask>`

Or `brew tap miccal/miccal` and then `brew install <cask>`.

## Why do you have these as separate Formulae?

* `m-mpv` will install the `--HEAD` version of mpv and generate an app bundle.

This may be installed via

`brew install --HEAD miccal/miccal/m-mpv`

and upgraded via

`brew upgrade --fetch-HEAD miccal/miccal/m-mpv`

Or `brew tap miccal/miccal` and then

`brew install --HEAD m-mpv`

and

`brew upgrade --fetch-HEAD m-mpv`

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
