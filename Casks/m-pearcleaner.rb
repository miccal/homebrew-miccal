cask "m-pearcleaner" do
  version "5.3.8"

  url "https://github.com/alienator88/Pearcleaner/releases/download/#{version}/Pearcleaner.dmg"

  livecheck do
    cask "pearcleaner"
  end

  app "Pearcleaner.app"
end
