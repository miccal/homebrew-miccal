cask "m-apparency" do
  version "2.0,426"
  sha256 :no_check

  url "https://mothersruin.com/software/downloads/Apparency.dmg"

  livecheck do
    url "https://www.mothersruin.com/software/Apparency/data/ApparencyVersionInfo.plist"
    strategy :xml do |xml|
      short_version = xml.elements["//key[text()='CFBundleShortVersionString']"]&.next_element&.text&.strip
      version = xml.elements["//key[text()='CFBundleVersion']"]&.next_element&.text&.strip
      next if short_version.blank? || version.blank?

      "#{short_version},#{version}"
    end
  end

  name "Apparency"
  homepage "https://www.mothersruin.com/software/Apparency/"

  app "Apparency.app"
  binary "#{appdir}/Apparency.app/Contents/MacOS/appy"
end
