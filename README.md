## Why do you have these as separate Casks?

* `m-dwsim` will install the chemical process simulation software DWSIM, which does not pass the required signature verification checks for inclusion in `homebrew-cask`.
* `m-libreoffice` will install the latest version (be it a stable release or a release candidate) of `libreoffice` and the binary `soffice` aliased to the binary `libreoffice` using the AARNet (Australian Academic and Research Network) as a mirror.
* `m-little-snitch` will install the latest version (be it a stable release or a nightly release) of `little-snitch`.
* `m-mactex-no-gui` will install the latest version of `mactex-no-gui` using the AARNet as a mirror.
* `m-microsoft-outlook` will install the latest version of Microsoft Outlook without the dependency on `microsoft-auto-update`.
* `m-microsoft-teams` will install the latest "Public (R4) build" version of Microsoft Teams 2.1 without the dependency on `microsoft-auto-update`.
* `m-mpv` will install `mpv` from `homebrew-core` with an `.app` bundle built and maintained by Vítor Galvão (https://github.com/vitorgalvao).
* `m-tex-live-utility` will install the latest version (be it a stable release or a beta release) of `tex-live-utility`.
* `m-tor-browser` will install the latest version (be it a stable release or an alpha release) of `tor-browser`.

These may be installed via

`brew install miccal/miccal/<cask>`

Alternatively,

`brew tap miccal/miccal`

and then

`brew install <cask>`

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
