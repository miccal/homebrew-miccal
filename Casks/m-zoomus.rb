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
    set_ownership "/Library/LaunchDaemons/us.zoom.ZoomDaemon.plist"
    FileUtils.rm("/Library/LaunchDaemons/us.zoom.ZoomDaemon.plist")
  end
end
