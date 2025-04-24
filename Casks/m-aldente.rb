cask "m-aldente" do
  version "1.32"
  sha256 :no_check

  url "https://apphousekitchen.com/aldente/AlDente#{version}.dmg"

  livecheck do
    cask "aldente"
  end

  app "AlDente.app"
end
