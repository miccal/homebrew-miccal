cask "m-microsoft-defender" do
  version "101.24042.0008"
  sha256 :no_check

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Defender_#{version}_Individuals_Installer.pkg"

  livecheck do
    url "https://aka.ms/MacDefender"
    strategy :header_match
  end

  pkg "Microsoft_Defender_#{version}_Individuals_Installer.pkg",
      # installer -showChoicesXML -pkg filename.pkg -target /
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.package.Microsoft_AutoUpdate.app",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall script:  {
              executable: "/Library/Application Support/Microsoft/Defender/uninstall/uninstall",
              sudo:       true,
            },
            pkgutil: [
              "com.microsoft.dlp.agent",
              "com.microsoft.dlp.daemon",
              "com.microsoft.dlp.ux",
              "com.microsoft.wdav",
            ]

  caveats <<~EOS
    Reboot macOS to ensure that the Microsoft Defender Network Extension
      com.microsoft.wdav.netext
    and the Microsoft Defender Endpoint Security Extension
      com.microsoft.wdav.epsext
    are uninstalled correctly.
    To check the state of the system extensions, run the command
      systemextensionsctl list
  EOS
end
