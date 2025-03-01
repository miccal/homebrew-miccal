cask "m-leader-key" do
  version "1.10.1"
  sha256 :no_check

  url "https://github.com/mikker/LeaderKey.app/releases/download/v#{version}/Leader.Key.app.zip"

  app "Leader Key.app"
end
