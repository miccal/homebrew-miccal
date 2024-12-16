cask "m-zoomus" do
  arch arm: "arm64/"

  version "6.3.0.44805"
  sha256 :no_check

  url "https://cdn.zoom.us/prod/#{version}/#{arch}zoomusInstallerFull.pkg"

  livecheck do
    cask "zoom"
  end

  pkg "zoomusInstallerFull.pkg"

  postflight do
    system_command "/bin/rm",
                   args: [
                     "/Library/LaunchAgents/us.zoom.updater.login.check.plist",
                     "/Library/LaunchAgents/us.zoom.updater.plist",
                     "/Library/LaunchDaemons/us.zoom.ZoomDaemon.plist",
                   ],
                   sudo: true
  end

  caveats <<~EOS
    The postflight block removes the Global Launch Agents and Daemons of #{token}, as it causes issues on Mac's with a Mobile Device Management (MDM) Profile.
  EOS
end
