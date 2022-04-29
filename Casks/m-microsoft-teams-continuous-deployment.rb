cask "m-microsoft-teams-continuous-deployment" do
  version "1.5.00.11859"
  sha256 :no_check

  url "https://statics.teams.cdn.office.net/production-osx/#{version}/Teams_osx.pkg",
      verified: "statics.teams.cdn.office.net/production-osx/"
  name "Microsoft Teams"
  desc "Meet, chat, call, and collaborate in just one place"
  homepage "https://teams.microsoft.com/downloads"

  livecheck do
    url "https://raw.githubusercontent.com/ItzLevvie/MicrosoftTeams-msinternal/master/defconfig"
    regex(%r{(\d+(?:\.\d+)+)/Teams[._-]osx\.pkg}i)
  end

  pkg "Teams_osx.pkg"

  uninstall pkgutil:   "com.microsoft.teams",
            launchctl: "com.microsoft.teams.TeamsUpdaterDaemon",
            delete:    [
              "/Library/Logs/Microsoft/Teams",
              "/Library/Preferences/com.microsoft.teams.plist",
            ]
end
