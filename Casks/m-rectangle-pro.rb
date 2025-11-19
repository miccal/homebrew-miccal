cask "m-rectangle-pro" do
  version "3.64"

  url "https://rectangleapp.com/pro/downloads/Rectangle%20Pro%20#{version}.dmg"

  livecheck do
    cask "rectangle-pro"
  end

  app "Rectangle Pro.app"
end
