cask "m-little-snitch" do
  version "5.2.2"
  sha256 :no_check

  url "https://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
  #url "https://obdev.at/downloads/littlesnitch/nightly/LittleSnitch-#{version.before_comma}-nightly-(#{version.after_comma}).dmg"
  name "Little Snitch"
  homepage "https://www.obdev.at/products/littlesnitch/index.html"

  app "Little Snitch.app"
end
