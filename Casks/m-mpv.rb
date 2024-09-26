cask "m-mpv" do
  arch arm: "14-arm", intel: "13-intel"

  version "2024.09.26"
  sha256 :no_check

  url "https://nightly.link/mpv-player/mpv/workflows/build/master/mpv-macos-#{arch}.zip"

  livecheck do
    skip
  end

  app "mpv.app"

  caveats <<~EOS
    #{token} installs a test build directly from github.com/mpv-player/mpv, built using the most recent commit and pull request.
    The version is simply the date in the format {year}.{month}.{day}, which is updated on a weekly basis.
  EOS
end
