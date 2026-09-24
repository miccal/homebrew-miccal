cask "m-zoomus" do
  version "7.2.2.88465"

  url "https://cdn.zoom.us/prod/#{version}/arm64/zoomusInstallerFull.pkg"

  livecheck do
    cask "zoom"
  end

  pkg "zoomusInstallerFull.pkg"
end
