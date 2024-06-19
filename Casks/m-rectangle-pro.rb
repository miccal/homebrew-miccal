cask "m-rectangle-pro" do
  version "3.0.28"
  sha256 :no_check

  url "https://rectangleapp.com/pro/downloads/Rectangle%20Pro%20#{version}.dmg"
  name "Rectangle Pro"
  homepage "https://rectangleapp.com/pro"

  livecheck do
    cask "rectangle-pro"
  end

  app "Rectangle Pro.app"
end
