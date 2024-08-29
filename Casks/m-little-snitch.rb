cask "m-little-snitch" do
  version "6.1,7113"
  sha256 :no_check

  url "https://obdev.at/ftp/pub/Products/littlesnitch#{"/nightly" if version.csv.second}/LittleSnitch-#{version.csv.first}#{"-nightly-(#{version.csv.second})" if version.csv.second}.dmg"

  livecheck do
    url "https://sw-update.obdev.at/update-feeds/littlesnitch#{version.major}.plist"
    regex(/LittleSnitch[._-]v?(\d+(?:\.\d+)+)(?:[._-]nightly[._-]\((\d+)\))?\.dmg/)
    strategy :xml do |xml, regex|
      xml.get_elements("//key[text()='DownloadURL']").map do |item|
        match = item.next_element&.text&.match(regex)
        next if match.blank?

        match[2] ? "#{match[1]},#{match[2]}" : match[1]
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
