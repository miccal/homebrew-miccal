cask "m-ipe" do
  arch arm: "arm", intel: "intel"

  version "7.2.29"
  sha256 :no_check

  url "https://github.com/otfried/ipe/releases/download/v#{version}/ipe-#{version}-mac-#{arch}.dmg"
  name "Ipe"
  homepage "https://ipe.otfried.org/"

  livecheck do
    cask "ipe"
  end

  app "Ipe.app"
end
