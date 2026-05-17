cask "m-mole" do
  version "1.4.1"

  url "https://mole.fit/Mole.dmg"

  livecheck do
    url "https://mole.fit/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "Mole.app"
end
