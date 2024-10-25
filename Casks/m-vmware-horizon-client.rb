cask "m-vmware-horizon-client" do
  version "2406.1-8.13.1-11490701655,CART25FQ2_MAC_2406.1"
  sha256 :no_check

  url "https://download3.omnissa.com/software/#{version.csv.second}/VMware-Horizon-Client-#{version.csv.first}.dmg"

  livecheck do
    cask "vmware-horizon-client"
  end

  pkg "VMware Horizon Client.pkg"
end
