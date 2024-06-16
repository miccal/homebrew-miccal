cask "m-dwsim" do
  version "8.7.1"
  sha256 :no_check

  url "https://downloads.sourceforge.net/dwsim/DWSIM%20#{version}.dmg",
      verified: "downloads.sourceforge.net/dwsim/"
  name "DWSIM"
  desc "Chemical process simulator"
  homepage "https://dwsim.org/"

  livecheck do
    url "https://sourceforge.net/projects/dwsim/rss?path=/DWSIM"
    regex(%r{url=.*?/DWSIM(?:[._-]|%20)v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "DWSIM.app"

  caveats do
    requires_rosetta
  end
end
