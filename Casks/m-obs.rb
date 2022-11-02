cask "m-obs" do
  version "28.1.1"
  sha256 :no_check

  url "https://github.com/obsproject/obs-studio/releases/download/#{version}/obs-studio-#{version}-macos-x86_64.dmg"
  name "OBS"
  homepage "https://obsproject.com/"

  livecheck do
    skip "Check obs and obs-beta"
  end

  app "OBS.app"

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/obs-mac-virtualcam.plugin"
end
