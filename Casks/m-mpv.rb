cask "m-mpv" do
  version "2025.09.23"
  sha256 :no_check

  url "https://nightly.link/mpv-player/mpv/workflows/build/master/mpv-macos-15-arm.zip"

  livecheck do
    url "https://api.github.com/repos/mpv-player/mpv/branches/master"
    strategy :json do |json|
      date = json.dig("commit", "commit", "committer", "date")
      Date.parse(date).strftime("%Y.%m.%d").to_s
    end
  end

  app "mpv.app"

  caveats <<~EOS
    #{token} installs a test build of "mpv.app" directly from github.com/mpv-player/mpv, built using the most recent commit and pull request.
    The version is simply the date of the most recent commit and pull request in the format {year}.{month}.{day}.
    Run the command
      git ls-remote https://github.com/mpv-player/mpv.git HEAD
    to list the reference of the the most recent commit and pull request.
    The command
      git ls-remote https://github.com/mpv-player/mpv.git HEAD | head -c 9 ; echo
    will print the first nine characters of the reference, which are used at the end of the version listed in "mpv.app" itself in the format
      mpv v{main release version}-dev-g{first nine characters of the reference}
  EOS
end
