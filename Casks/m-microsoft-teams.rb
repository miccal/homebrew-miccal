cask "m-microsoft-teams" do
  version "26093.311.4599.3126"

  url "https://statics.teams.cdn.office.net/production-osx/#{version}/MicrosoftTeams.pkg"

  livecheck do
    cask "microsoft-teams"
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
