cask "m-little-snitch" do
  version "6.0.2"
  sha256 :no_check

  # Stable:
  url "https://sw-update.obdev.at/ftp/pub/Products/LittleSnitch/LittleSnitch-#{version}.dmg"
  # Nightly:
  #url "https://sw-update.obdev.at/ftp/pub/Products/LittleSnitch/nightly/LittleSnitch-#{version.csv.first}-nightly-(#{version.csv.second}).dmg"

  livecheck do
    url "https://sw-update.obdev.at/update-feeds/littlesnitch#{version.major}.plist"
    regex(/LittleSnitch[._-]v?(\d+(?:\.\d+)+)([._-]nightly[._-]\((\d+)\))?\.dmg/)
    strategy :xml do |xml, regex|
      xml.get_elements("//key[text()='DownloadURL']").map do |item|
        match = item.next_element&.text&.match(regex)
        if match[3].blank?
          match[1]
        else
          "#{match[1]},#{match[3]}"
        end
      end
    end
  end

  app "Little Snitch.app"
end
