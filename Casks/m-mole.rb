cask "m-mole" do
  version "1.6.2"

  url "https://mole.fit/Mole.dmg"
  #url "https://mole.fit/Mole-preview.dmg"

  livecheck do
    cask "mole-app"
  end

  app "Mole.app"
end
