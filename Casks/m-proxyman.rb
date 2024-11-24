cask "m-proxyman" do
  version "5.11.0,51100"
  sha256 :no_check

  url "https://download.proxyman.io/#{version.csv.second}/Proxyman_#{version.csv.first}.dmg"

  livecheck do
    cask "proxyman"
  end

  app "Proxyman.app"
end
