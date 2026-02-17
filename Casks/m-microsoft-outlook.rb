cask "m-microsoft-outlook" do
  version "16.106.26021521"

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Outlook_#{version}_Installer.pkg"

  livecheck do
    cask "microsoft-outlook"
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
