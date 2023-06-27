cask "m-microsoft-teams" do
  version "23176.300.2193.5578"
  sha256 :no_check

  url "https://statics.teams.cdn.office.net/production-osx/#{version}/MicrosoftTeams.pkg"
  name "Microsoft Teams"
  homepage "https://teams.microsoft.com/downloads"

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

  uninstall pkgutil: "com.microsoft.teams2"
end
