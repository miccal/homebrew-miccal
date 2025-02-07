cask "m-leader-key" do
  version "1.8.0,77"
  sha256 :no_check

  url "https://leader-key-updates.s3.amazonaws.com/Leader%20Key.b#{version.csv.second}.zip"

  livecheck do
    cask "leader-key"
  end

  app "Leader Key.app"
end
