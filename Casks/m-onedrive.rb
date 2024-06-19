cask "m-onedrive" do
  version "24.108.0528.0005"
  sha256 :no_check

  url "https://oneclient.sfx.ms/Mac/Installers/#{version}/universal/OneDrive.pkg"
  name "OneDrive"
  homepage "https://www.microsoft.com/en-us/microsoft-365/onedrive/online-cloud-storage"

  livecheck do
    cask "onedrive"
  end

  pkg "OneDrive.pkg"
end
