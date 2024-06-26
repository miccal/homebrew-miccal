cask "m-proxyman" do
  version "5.5.0,50500"
  sha256 :no_check

  url "https://download.proxyman.io/#{version.csv.second}/Proxyman_#{version.csv.first}.dmg"

  livecheck do
    cask "proxyman"
  end

  app "Proxyman.app"
end
