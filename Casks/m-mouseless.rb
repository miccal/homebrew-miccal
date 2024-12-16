cask "m-mouseless" do
  version "0.2.1"
  sha256 :no_check

  url "https://mouseless.click/mouseless-installer_v#{version}.dmg"

  app "Mouseless.app"
end
