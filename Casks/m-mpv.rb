cask "m-mpv" do
  version "2025.12.30"

  url "https://nightly.link/mpv-player/mpv/workflows/build/master/mpv-macos-26-arm.zip"

  livecheck do
    url "https://nightly.link/mpv-player/mpv/workflows/build/master"
    regex(/mpv[._-]v(.+)[._-]macos[._-]26[._-]arm\.zip/i)
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
