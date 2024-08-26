cask "m-zoomus" do
  arch arm: "arm64/"

  version "6.1.11.39163"
  sha256 :no_check

  url "https://cdn.zoom.us/prod/#{version}/#{arch}zoomusInstallerFull.pkg"

  livecheck do
    cask "zoom"
  end

  pkg "zoomusInstallerFull.pkg"

  postflight do
    system_command "/bin/rm",
                   args:         ["/Library/LaunchDaemons/us.zoom.ZoomDaemon.plist"],
                   sudo:         true,
  end
end
