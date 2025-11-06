cask "m-microsoft-365-copilot" do
  version "1.2511.0301"
  sha256 :no_check

  url "https://m365copilotformac.blob.core.windows.net/releases/Microsoft_365_Copilot_universal_#{version}_Installer.pkg"

  livecheck do
    url "https://aka.ms/M365CopilotForMac"
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
