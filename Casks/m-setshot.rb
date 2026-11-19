cask "m-setshot" do
  version "1.0.1"

  url "https://github.com/adamengst/setshot-app/releases/download/v#{version}/SetShot-#{version}.zip"

  livecheck do
    cask "setshot"
  end

  app "SetShot.app"
end
