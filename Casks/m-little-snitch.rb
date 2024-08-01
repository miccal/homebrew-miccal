cask "m-little-snitch" do
  version "6.0.4"
  sha256 :no_check

  # Stable:
  url "https://sw-update.obdev.at/ftp/pub/Products/LittleSnitch/LittleSnitch-#{version}.dmg"
  # Nightly:
  #url "https://sw-update.obdev.at/ftp/pub/Products/LittleSnitch/nightly/LittleSnitch-#{version.csv.first}-nightly-(#{version.csv.second}).dmg"

  livecheck do
    url "https://sw-update.obdev.at/update-feeds/littlesnitch#{version.major}.plist"
    regex(/LittleSnitch[._-]v?(\d+(?:\.\d+)+)(?:[._-]nightly[._-]\((\d+)\))?\.dmg/)
    strategy :xml do |xml, regex|
      xml.get_elements("//key[text()='DownloadURL']").map do |item|
        match = item.next_element&.text&.match(regex)
        if match[2].blank?
          match[1]
        else
          "#{match[1]},#{match[2]}"
        end
      end
    end
  end

  app "Little Snitch.app"

  caveats <<~EOS
    Reboot macOS to ensure that the Little Snitch Network Extension
      at.obdev.littlesnitch.networkextension
    and the Little Snitch Endpoint Security Extension
      at.obdev.littlesnitch.endpointsecurity
    are uninstalled correctly.
    To check the state of the system extensions, run the command
      systemextensionsctl list
  EOS
end
