cask "m-mpv" do
  version "0.41.0-dev-g876ba7b28-33998722640"

  url "https://nightly.link/mpv-player/mpv/workflows/build/master/mpv-v#{version}-macos-26-arm.zip"

  livecheck do
    url "https://nightly.link/mpv-player/mpv/workflows/build/master"
    regex(/mpv[._-]v(.+)[._-]macos[._-]26[._-]arm\.zip"/i)
  end

  app "mpv.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "/Applications/mpv.app"],
        sudo:         false,
        must_succeed: false,
        print_stderr: false
  end
end
