cask "m-microsoft-365-copilot" do
  version "1.2602.0401"

  url "https://m365copilotformac.blob.core.windows.net/releases/Microsoft_365_Copilot_universal_#{version}_Installer.pkg"

  livecheck do
    url "https://aka.ms/M365CopilotForMac"
    regex(/microsoft[._-]365[._-]copilot[._-]universal[._-]v?(\d+(?:\.\d+)+)[._-]installer\.pkg/i)
    strategy :header_match
  end

  pkg "Microsoft_365_Copilot_universal_#{version}_Installer.pkg",
      # installer -showChoicesXML -pkg filename.pkg -target /
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.autoupdate",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]
end
