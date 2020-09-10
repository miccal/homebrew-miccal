cask "m-little-snitch" do
  version "4.5.2"
  sha256 :no_check

  url "https://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
  #url "https://obdev.at/downloads/littlesnitch/nightly/LittleSnitch-#{version.before_comma}-nightly-(#{version.after_comma}).dmg"
  name "Little Snitch"
  homepage "https://www.obdev.at/products/littlesnitch/index.html"

  installer manual: "LittleSnitch-#{version}.dmg"
  #installer manual: "LittleSnitch-#{version.before_comma}-nightly-(#{version.after_comma}).dmg"
end
