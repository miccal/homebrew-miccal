cask "m-onedrive" do
  version "26.051.0316.0004"

  url "https://oneclient.sfx.ms/Mac/Installers/#{version}/universal/OneDrive.pkg"

  livecheck do
    cask "onedrive"
  end

  pkg "OneDrive.pkg"
end
