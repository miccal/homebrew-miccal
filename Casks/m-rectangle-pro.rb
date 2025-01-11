cask "m-rectangle-pro" do
  version "3.0.41"
  sha256 :no_check

  url "https://rectangleapp.com/pro/downloads/Rectangle%20Pro%20#{version}.dmg"

  livecheck do
    cask "rectangle-pro"
  end

  app "Rectangle Pro.app"
end
