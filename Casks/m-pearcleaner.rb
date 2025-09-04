cask "m-pearcleaner" do
  version "5.0.6"
  sha256 :no_check

  url "https://github.com/alienator88/Pearcleaner/releases/download/#{version}/Pearcleaner.dmg"

  livecheck do
    cask "pearcleaner"
  end

  app "Pearcleaner.app"
end
