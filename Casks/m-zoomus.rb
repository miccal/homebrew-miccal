cask "m-zoomus" do
  version "6.5.6.60177"
  sha256 :no_check

  url "https://cdn.zoom.us/prod/#{version}/arm64/zoomusInstallerFull.pkg"

  livecheck do
    cask "zoom"
  end

  pkg "zoomusInstallerFull.pkg"
end
