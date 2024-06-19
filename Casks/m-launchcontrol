cask "m-launchcontrol" do
  version "2.6.1"
  sha256 :no_check

  url "https://www.soma-zone.com/download/files/LaunchControl-#{version}.tar.xz"
  name "LaunchControl"
  homepage "https://www.soma-zone.com/LaunchControl/"

  livecheck do
    cask "launchcontrol"
  end

  app "LaunchControl.app"
  binary "#{appdir}/LaunchControl.app/Contents/MacOS/fdautil"
end
