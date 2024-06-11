cask "m-microsoft-outlook" do
  version "16.86.24060916"
  sha256 :no_check

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Outlook_#{version}_Installer.pkg"
  name "Microsoft Outlook"
  homepage "https://www.microsoft.com/en-us/microsoft-365/outlook/outlook-for-business"

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

  uninstall launchctl: "com.microsoft.office.licensingV2.helper",
            pkgutil:   [
              "com.microsoft.package.Microsoft_Outlook.app",
              "com.microsoft.pkg.licensing",
            ]
end
