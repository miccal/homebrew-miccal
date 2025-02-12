cask "m-slack" do
  arch arm: "arm64", intel: "x64"

  version "4.42.120"
  sha256 :no_check

  url "https://downloads.slack-edge.com/desktop-releases/mac/#{arch}/#{version}/Slack-#{version}-macOS.dmg"

  livecheck do
    cask "slack@beta"
  end

  app "Slack.app"
end
