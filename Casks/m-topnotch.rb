cask "m-topnotch" do
  version "1.3.2"
  sha256 :no_check

  url "https://updates.topnotch.app/TopNotch-#{version}.dmg"

  livecheck do
    cask "topnotch"
  end

  app "TopNotch.app"
end
