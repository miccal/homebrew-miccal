cask "m-mpv" do
  version "0.41.0-dev-gb7e8fe949-21114726114"

  url "https://nightly.link/mpv-player/mpv/workflows/build/master/mpv-v#{version}-macos-26-arm.zip"

  livecheck do
    url "https://nightly.link/mpv-player/mpv/workflows/build/master"
    regex(/mpv[._-]v(.+)[._-]macos[._-]26[._-]arm\.zip"/i)
  end

  app "mpv.app"
end
