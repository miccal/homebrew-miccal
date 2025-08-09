cask "m-proxyman" do
  version "5.23.1,52301"
  sha256 :no_check

  url "https://download.proxyman.com/#{version.csv.second}/Proxyman_#{version.csv.first}.dmg"

  livecheck do
    cask "proxyman"
  end

  app "Proxyman.app"
end
