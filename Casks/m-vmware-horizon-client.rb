cask "m-vmware-horizon-client" do
  version "2312.1-8.12.1-23531248,CART25FQ1_MAC_2312.1"
  sha256 :no_check

  url "https://download3.omnissa.com/software/#{version.csv.second}/VMware-Horizon-Client-#{version.csv.first}.dmg"
  name "VMware Horizon Client"
  homepage "https://www.vmware.com/"

  livecheck do
    cask "vmware-horizon-client"
  end

  pkg "VMware Horizon Client.pkg"
end
