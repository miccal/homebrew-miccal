cask "m-folx" do
  version "5.27"
  sha256 :no_check

  url "https://cdn.electronic.us/products/folx/mac/download/downloader_mac.dmg"
  name "Folx"
  homepage "https://mac.eltima.com/download-manager.html"

  livecheck do
    cask "folx"
  end

  app "Folx.app"

  caveats do
    requires_rosetta
  end
end
