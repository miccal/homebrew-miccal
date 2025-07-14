cask "m-batt" do
  version "0.4.1"
  sha256 :no_check

  url "https://github.com/charlie0129/batt/releases/download/v#{version}/batt-v#{version}.dmg"

  livecheck do
    formula "batt"
  end

  app "batt.app"
end
