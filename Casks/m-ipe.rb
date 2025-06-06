cask "m-ipe" do
  version "7.2.29"
  sha256 :no_check

  url "https://github.com/otfried/ipe/releases/download/v#{version}/ipe-#{version}-mac-arm.dmg"

  livecheck do
    cask "ipe"
  end

  app "Ipe.app"
end
