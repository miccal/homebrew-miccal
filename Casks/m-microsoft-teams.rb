cask "m-microsoft-teams" do
  version "24124.1412.2911.3341"
  sha256 :no_check

  url "https://statics.teams.cdn.office.net/production-osx/#{version}/MicrosoftTeams.pkg",
      verified: "statics.teams.cdn.office.net/"
  name "Microsoft Teams"
  desc "Meet, chat, call, and collaborate in just one place"
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

  uninstall launchctl: "com.microsoft.teams.TeamsUpdaterDaemon",
            pkgutil:   [
              "com.microsoft.MSTeamsAudioDevice",
              "com.microsoft.teams2",
            ]
end
