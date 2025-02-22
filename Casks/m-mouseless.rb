cask "m-mouseless" do
  version "0.3.1"
  sha256 :no_check

  url "https://mouseless.click/mouseless-installer_v#{version}.dmg"

  livecheck do
    cask "mouseless"
  end

  app "Mouseless.app"
end
