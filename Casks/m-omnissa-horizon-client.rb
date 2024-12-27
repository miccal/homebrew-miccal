cask "m-omnissa-horizon-client" do
  version "2412-8.14.0-12437218286,CART25FQ4_MAC_2412"
  sha256 :no_check

  url "https://download3.omnissa.com/software/#{version.csv.second}/Omnissa-Horizon-Client-#{version.csv.first}.dmg"

  livecheck do
    cask "omnissa-horizon-client"
  end

  pkg "Omnissa Horizon Client.pkg"
end
