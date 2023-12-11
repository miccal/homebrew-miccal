cask "m-dwsim" do
  version "8.6.6"
  sha256 :no_check

  url "https://github.com/DanWBR/dwsim/releases/download/v#{version}/DWSIM.#{version}.dmg"
  name "DWSIM"
  homepage "https://dwsim.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "DWSIM.app"

  caveats do
    requires_rosetta
  end
end
