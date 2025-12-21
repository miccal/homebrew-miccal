cask "m-launchcontrol" do
  version "2.10.1"

  url "https://www.soma-zone.com/download/files/LaunchControl-#{version}.tar.xz"

  livecheck do
    cask "launchcontrol"
  end

  app "LaunchControl.app"
end
