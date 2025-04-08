cask "m-leader-key" do
  version "1.13.0"
  sha256 :no_check

  url "https://github.com/mikker/LeaderKey.app/releases/download/v#{version}/Leader.Key.app.zip"

  livecheck do
    cask "leader-key"
  end

  app "Leader Key.app"
end
