cask "m-microsoft-teams" do
  version "23285.3806.2513.4535"
  sha256 :no_check

  url "https://statics.teams.cdn.office.net/production-osx/#{version}/MicrosoftTeams.pkg"
  name "Microsoft Teams"
  homepage "https://www.microsoft.com/en-us/microsoft-teams/group-chat-software"

  livecheck do
    url "https://raw.githubusercontent.com/ItzLevvie/MicrosoftTeams-msinternal/master/defconfig2"
    regex(%r{Public\s\(R4\)\sbuild.+(?:\n+.+)+osx/(\d+(?:\.\d+)+)/MicrosoftTeams\.pkg}i)
  end

  pkg "MicrosoftTeams.pkg",
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
            launchctl: "com.microsoft.teams.TeamsUpdaterDaemon",
            delete:    [
              "/Applications/Microsoft Teams (work or school).app",
              "/Library/Application Support/Microsoft/TeamsUpdaterDaemon",
              "/Library/Logs/Microsoft/Teams",
              "/Library/Logs/Microsoft/MSTeams",
              "/Library/Preferences/com.microsoft.teams.plist",
            ]
end
