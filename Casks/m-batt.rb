cask "m-batt" do
  version "0.7.0"

  url "https://github.com/charlie0129/batt/releases/download/v#{version}/batt-v#{version}.dmg"

  livecheck do
    formula "batt"
  end

  app "batt.app"
end
