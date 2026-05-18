cask "m-mole" do
  version "1.4.1"

  url "https://mole.fit/Mole.dmg"

  livecheck do
    cask "mole-app"
  end

  app "Mole.app"
end
