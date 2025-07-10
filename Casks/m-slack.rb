cask "m-slack" do
  version "4.45.60"
  sha256 :no_check

  url "https://downloads.slack-edge.com/desktop-releases/mac/arm64/#{version}/Slack-#{version}-macOS.dmg"

  livecheck do
    cask "slack@beta"
  end

  app "Slack.app"
end
