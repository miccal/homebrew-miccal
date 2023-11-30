cask "m-microsoft-outlook" do
  version "16.79.23111718"
  sha256 :no_check

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Outlook_#{version}_Installer.pkg"
  name "Microsoft Outlook"
  homepage "https://www.microsoft.com/en-us/microsoft-365/outlook/outlook-for-business"

  livecheck do
    url "https://go.microsoft.com/fwlink/p/?linkid=525137"
    strategy :header_match
  end

  pkg "Microsoft_Outlook_#{version}_Installer.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.autoupdate",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil:   [
              "com.microsoft.package.Microsoft_Outlook.app",
              "com.microsoft.pkg.licensing",
            ],
            launchctl: "com.microsoft.office.licensingV2.helper"
end
