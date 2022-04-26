cask "m-little-snitch" do
  version "5.4"
  sha256 :no_check

  url "https://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
  #url "https://obdev.at/downloads/littlesnitch/nightly/LittleSnitch-#{version.csv.first}-nightly-(#{version.csv.second}).dmg"
  name "Little Snitch"
  homepage "https://www.obdev.at/products/littlesnitch/index.html"

  livecheck do
    url "https://obdev.at/products/littlesnitch/download-nightly.html"
    strategy :page_match do |page|
      match = page.match(/LittleSnitch[._-](\d+(?:\.\d+)+)([._-]nightly[._-]\((\d+)\))?\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[3]}"
    end
  end

  app "Little Snitch.app"
end
