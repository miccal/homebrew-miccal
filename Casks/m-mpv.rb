cask "m-mpv" do
  arch arm: "14-arm", intel: "13-intel"

  version "2024.09.28"
  sha256 :no_check

  url "https://nightly.link/mpv-player/mpv/workflows/build/master/mpv-macos-#{arch}.zip"

  livecheck do
    skip
  end

  app "mpv.app"

  caveats <<~EOS
    #{token} installs a test build of mpv.app directly from github.com/mpv-player/mpv, built using the most recent commit and pull request.
    The version is simply the date in the format {year}.{month}.{day}, and is updated on a weekly basis.
    Run the command
      git ls-remote https://github.com/mpv-player/mpv.git HEAD
    to list the reference of the the most recent commit and pull request.
    The command
      git ls-remote https://github.com/mpv-player/mpv.git HEAD | head -c 7 ; echo
    will print the first seven characters of the reference, which are used as the version listed in mpv.app itself.
  EOS
end
