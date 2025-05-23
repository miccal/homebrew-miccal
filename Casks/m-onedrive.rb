cask "m-onedrive" do
  version "25.075.0420.0002"
  sha256 :no_check

  url "https://oneclient.sfx.ms/Mac/Installers/#{version}/universal/OneDrive.pkg"

  livecheck do
    cask "onedrive"
  end

  pkg "OneDrive.pkg"
end
