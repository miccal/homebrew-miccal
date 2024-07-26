cask "m-vmware-horizon-client" do
  version "2406-8.13.0-10025792799,CART25FQ2_MAC_2406"
  sha256 :no_check

  url "https://download3.omnissa.com/software/#{version.csv.second}/VMware-Horizon-Client-#{version.csv.first}.dmg"

  livecheck do
    cask "vmware-horizon-client"
  end

  pkg "VMware Horizon Client.pkg"
end
