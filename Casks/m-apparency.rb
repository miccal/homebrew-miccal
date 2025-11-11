cask "m-apparency" do
  version "3.0"

  url "https://www.mothersruin.com/software/archives/Apparency-#{version}.dmg"

  livecheck do
    cask "apparency"
  end

  app "Apparency.app"
end
