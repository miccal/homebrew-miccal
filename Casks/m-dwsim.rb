cask "m-dwsim" do
  version "8.7.1"
  sha256 :no_check

  url "https://downloads.sourceforge.net/project/dwsim/DWSIM/DWSIM%20#{version.major.minor}/#{version}/DWSIM%20#{version}.dmg"
  name "DWSIM"
  homepage "https://dwsim.org/"

  livecheck do
    url "https://github.com/DanWBR/dwsim/releases/"
    strategy :github_latest
  end

  app "DWSIM.app"

  caveats do
    requires_rosetta
  end
end
