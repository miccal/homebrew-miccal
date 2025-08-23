cask "m-pearcleaner" do
  version "5.0.4"
  sha256 :no_check

  url "https://github.com/alienator88/Pearcleaner/releases/download/#{version}/Pearcleaner.zip"

  livecheck do
    cask "pearcleaner"
  end

  app "Pearcleaner.app"
end
