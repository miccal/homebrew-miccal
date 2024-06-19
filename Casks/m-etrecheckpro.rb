cask "m-etrecheckpro" do
  version "6.8.5"
  sha256 :no_check

  url "https://cdn.etrecheck.com/EtreCheckPro.zip"
  name "EtreCheck"
  homepage "https://etrecheck.com/"

  livecheck do
    url "https://cdn.etrecheck.com/EtreCheckProUpdates.plist"
    strategy :xml do |xml|
      xml.elements["//key[text()='CFBundleShortVersionString']"]&.next_element&.text&.strip
    end
  end

  app "EtreCheckPro.app"
end
