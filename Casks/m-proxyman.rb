cask "m-proxyman" do
  version "6.1.0,60100"

  url "https://download.proxyman.com/#{version.csv.second}/Proxyman_#{version.csv.first}.dmg"

  livecheck do
    cask "proxyman"
  end

  app "Proxyman.app"
end
