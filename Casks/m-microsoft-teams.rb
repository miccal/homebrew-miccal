cask "m-microsoft-teams" do
  version "26032.605.4378.6183"

  url "https://statics.teams.cdn.office.net/production-osx/#{version}/MicrosoftTeams.pkg"
  livecheck do
    url "https://config.teams.microsoft.com/config/v1/MicrosoftTeams/#{version}?environment=prod&audienceGroup=general&teamsRing=general&agent=TeamsBuilds"
    strategy :json do |json|
      json.dig("BuildSettings", "WebView2Canary", "macOS", "latestVersion")
    end
  end

  pkg "MicrosoftTeams.pkg",
      # installer -showChoicesXML -pkg filename.pkg -target /
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.autoupdate",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]
end
