cask "m-leader-key" do
  version "1.6.0"
  sha256 :no_check

  url "https://github.com/mikker/LeaderKey.app/releases/download/v#{version}/Leader.Key.#{version}.zip"

  app "Leader Key.app"
end
