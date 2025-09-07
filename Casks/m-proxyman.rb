cask "m-proxyman" do
  version "5.24.0,52400"
  sha256 :no_check

  url "https://download.proxyman.com/#{version.csv.second}/Proxyman_#{version.csv.first}.dmg"

  livecheck do
    cask "proxyman"
  end

  app "Proxyman.app"
end
