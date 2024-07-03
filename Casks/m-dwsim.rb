cask "m-dwsim" do
  version "8.7.1"
  sha256 :no_check

  url "https://downloads.sourceforge.net/dwsim/DWSIM%20#{version}.dmg"

  livecheck do
    url "https://sourceforge.net/projects/dwsim/rss?path=/DWSIM"
    regex(/DWSIM(?:[._-]|%20)v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "DWSIM.app"

  caveats do
    requires_rosetta
  end
end
