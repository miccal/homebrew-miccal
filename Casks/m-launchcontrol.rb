cask "m-launchcontrol" do
  version "2.8.4"

  url "https://www.soma-zone.com/download/files/LaunchControl-#{version}.tar.xz"

  livecheck do
    cask "launchcontrol"
  end

  app "LaunchControl.app"
end
