cask "m-microsoft-365-copilot" do
  version "1.2607.0602"

  url "https://res.public.onecdn.static.microsoft/mro1cdnstorage/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_365_Copilot_universal_#{version}_Installer.pkg"

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
