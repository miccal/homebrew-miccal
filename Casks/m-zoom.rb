cask "m-zoom" do
  arch arm: "arm64/"

  version "6.1.1.36333"
  sha256 :no_check

  url "https://cdn.zoom.us/prod/#{version}/#{arch}zoomusInstallerFull.pkg"

  livecheck do
    cask "zoom"
  end

  pkg "zoomusInstallerFull.pkg"
end
