cask "m-pearcleaner" do
  version "5.4.1"

  url "https://github.com/alienator88/Pearcleaner/releases/download/#{version}/Pearcleaner.dmg"

  livecheck do
    cask "pearcleaner"
  end

  app "Pearcleaner.app"
end
