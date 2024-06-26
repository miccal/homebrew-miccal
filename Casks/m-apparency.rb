cask "m-apparency" do
  version "2.0,426"
  sha256 :no_check

  url "https://mothersruin.com/software/downloads/Apparency.dmg"

  livecheck do
    cask "apparency"
  end

  app "Apparency.app"
end
