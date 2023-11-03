cask "dwsim" do
  version "8.6.5"
  sha256 "11a221883aa152721c941b7ea827e2d436da3de7b4e700f857127a7d2d24316d"

  url "https://github.com/DanWBR/dwsim/releases/download/v#{version}/DWSIM.#{version}.dmg",
      verified: "github.com/DanWBR/dwsim/"
  name "DWSIM"
  desc "Chemical process simulator"
  homepage "https://dwsim.org/"

  app "DWSIM.app"

  caveats do
    requires_rosetta
  end
end
