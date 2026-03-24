cask "m-zoomus" do
  version "7.0.0.77593"

  url "https://cdn.zoom.us/prod/#{version}/arm64/zoomusInstallerFull.pkg"

  livecheck do
    cask "zoom"
  end

  pkg "zoomusInstallerFull.pkg"
end
