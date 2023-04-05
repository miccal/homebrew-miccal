cask "m-obs" do
  arch arm: "arm64", intel: "x86_64"

  version "29.1.0-beta2"
  sha256 :no_check

  url "https://github.com/obsproject/obs-studio/releases/download/#{version}/obs-studio-#{version}-macos-#{arch}.dmg"
  name "OBS"
  homepage "https://obsproject.com/"

  livecheck do
    skip "Check obs and obs-beta"
  end

  app "OBS.app"

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/obs-mac-virtualcam.plugin"
end
