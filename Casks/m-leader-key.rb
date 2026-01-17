cask "m-leader-key" do
  version "1.17.3"

  url "https://github.com/mikker/LeaderKey/releases/download/v#{version}/Leader.Key.app.zip"

  livecheck do
    cask "leader-key"
  end

  app "Leader Key.app"

  uninstall on_upgrade: :quit
end
