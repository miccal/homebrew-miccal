cask "m-slack" do
  arch arm: "arm64", intel: "x64"

  version "4.39.88"
  sha256 :no_check

  url "https://downloads.slack-edge.com/desktop-releases/mac/#{arch}/#{version}/Slack-#{version}-macOS.dmg"
  name "Slack"
  homepage "https://slack.com/beta/osx"

  livecheck do
    cask "slack@beta"
  end

  app "Slack.app"
end
