cask "m-onedrive" do
  version "26.198.1011.0006"

  url "https://oneclient.sfx.ms/Mac/Installers/#{version}/universal/OneDrive.pkg"

  livecheck do
    cask "onedrive"
  end

  pkg "OneDrive.pkg"
end
