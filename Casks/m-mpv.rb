cask "m-mpv" do
  arch arm: "14-arm", intel: "13-intel"

  version "2024.09.26"
  sha256 :no_check

  url "https://nightly.link/mpv-player/mpv/workflows/build/master/mpv-macos-#{arch}.zip"

  livecheck do
    skip "Version is the date in [year].[month].[day]"
  end

  app "mpv.app"
end
