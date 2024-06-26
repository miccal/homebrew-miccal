cask "m-launchcontrol" do
  version "2.6.1"
  sha256 :no_check

  url "https://www.soma-zone.com/download/files/LaunchControl-#{version}.tar.xz"

  livecheck do
    cask "launchcontrol"
  end

  app "LaunchControl.app"
end
