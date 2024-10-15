cask "m-microsoft-outlook" do
  version "16.90.24101387"
  sha256 :no_check

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Outlook_#{version}_Installer.pkg"

  livecheck do
    url "https://learn.microsoft.com/en-us/officeupdates/update-history-office-for-mac"
    regex(/Microsoft[._-]Outlook[._-](\d+(?:\.\d+)+)[._-](?:Updater|Installer)\.pkg/i)
  end

  pkg "Microsoft_Outlook_#{version}_Installer.pkg",
      # installer -showChoicesXML -pkg filename.pkg -target /
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.autoupdate",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]
end
