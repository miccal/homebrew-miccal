cask "m-mpv" do
  arch arm: "15-arm", intel: "13-intel"

  version "20241016"
  sha256 :no_check

  url "https://nightly.link/mpv-player/mpv/workflows/build/master/mpv-macos-#{arch}.zip"

  livecheck do
    url "https://api.github.com/repos/mpv-player/mpv/branches/master"
    strategy :json do |json|
      date = json.dig("commit", "commit", "committer", "date")
      Date.parse(date).strftime("%Y%m%d").to_s
    end
  end

  app "mpv.app"

  caveats <<~EOS
    #{token} installs a test build of "mpv.app" directly from github.com/mpv-player/mpv, built using the most recent commit and pull request.
    The version is simply the date of the most recent commit and pull request in the format {year}{month}{day}.
    Run the command
      git ls-remote https://github.com/mpv-player/mpv.git HEAD
    to list the reference of the the most recent commit and pull request.
    The command
      git ls-remote https://github.com/mpv-player/mpv.git HEAD | head -c 7 ; echo
    will print the first seven characters of the reference, which are used as the version listed in "mpv.app" itself.
  EOS
end
