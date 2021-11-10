cask "m-little-snitch" do
  version "5.3.1"
  sha256 :no_check

  url "https://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
  #url "https://obdev.at/downloads/littlesnitch/nightly/LittleSnitch-#{version}.dmg"
  name "Little Snitch"
  homepage "https://www.obdev.at/products/littlesnitch/index.html"

  livecheck do
    url "https://obdev.at/products/littlesnitch/download-nightly.html"
    strategy :page_match
    regex(%r{href=.*?/LittleSnitch-(.+)\.dmg}i)
  end

  app "Little Snitch.app"
end
