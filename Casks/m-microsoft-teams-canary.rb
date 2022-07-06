cask "m-microsoft-teams-canary" do
  version "1.5.00.18661"
  sha256 :no_check

  url "https://statics.teams.cdn.office.net/production-osx/#{version}/Teams_osx.pkg"
  name "Microsoft Teams"
  homepage "https://teams.microsoft.com/downloads"

  livecheck do
    #url "https://raw.githubusercontent.com/ItzLevvie/MicrosoftTeams-msinternal/master/defconfig"
    url "https://raw.githubusercontent.com/ItzLevvie/MicrosoftTeams-msinternal/master/defconfig2"
    regex(%r{(\d+(?:\.\d+)+)/Teams[._-]osx\.pkg}i)
  end

  pkg "Teams_osx.pkg"

  uninstall pkgutil:   [
    "com.microsoft.MSTeamsAudioDevice",
    "com.microsoft.teams",
  ],
            launchctl: "com.microsoft.teams.TeamsUpdaterDaemon",
            delete:    [
              "/Library/Logs/Microsoft/Teams",
              "/Library/Preferences/com.microsoft.teams.plist",
            ]
end
