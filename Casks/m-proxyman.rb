cask "m-proxyman" do
  version "6.0.0,60000"
  sha256 :no_check

  url "https://download.proxyman.com/#{version.csv.second}/Proxyman_#{version.csv.first}.dmg"

  livecheck do
    cask "proxyman"
  end

  app "Proxyman.app"
end
