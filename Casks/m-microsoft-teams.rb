cask "m-microsoft-teams" do
  version "24046.2813.2770.1094"
  sha256 :no_check

  url "https://statics.teams.cdn.office.net/production-osx/#{version}/MicrosoftTeams.pkg"
  name "Microsoft Teams"
  homepage "https://www.microsoft.com/en-us/microsoft-teams/group-chat-software"

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

  uninstall pkgutil:   [
              "com.microsoft.MSTeamsAudioDevice",
              "com.microsoft.teams2",
            ],
            launchctl: "com.microsoft.teams.TeamsUpdaterDaemon"
end
