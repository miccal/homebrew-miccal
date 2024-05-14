cask "m-little-snitch" do
  version "5.7.4"
  sha256 :no_check

  url "https://obdev.at/downloads/littlesnitch/nightly/LittleSnitch-#{version.csv.first}#{version.csv.second}.dmg"
  name "Little Snitch"
  homepage "https://www.obdev.at/products/littlesnitch/index.html"

  livecheck do
    url "https://sw-update.obdev.at/update-feeds/littlesnitch#{version.major}.plist"
    regex(/LittleSnitch[._-]v?(\d+(?:\.\d+)+)([._-]nightly[._-]\((\d+)\))?\.dmg/)
    strategy :xml do |xml, regex|
      xml.get_elements("//key[text()='DownloadURL']").map do |item|
        match = item.next_element&.text&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  app "Little Snitch.app"
end
