cask "m-mpv" do
  version "0.41.0-dev-ge75a17474-20748991386"

  url "https://nightly.link/mpv-player/mpv/workflows/build/master/mpv-v#{version}-macos-26-arm.zip"

  livecheck do
    url "https://nightly.link/mpv-player/mpv/workflows/build/master"
    regex(/mpv[._-]v(.+)[._-]macos[._-]26[._-]arm\.zip"/i)
  end

  app "mpv.app"
end
