cask "m-apparency" do
  version "3.0"

  url "https://mothersruin.com/software/downloads/Apparency.dmg"

  livecheck do
    cask "apparency"
  end

  app "Apparency.app"
end
