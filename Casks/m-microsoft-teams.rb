cask "m-microsoft-teams" do
  version "24137.2012.2930.9819"
  sha256 :no_check

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
