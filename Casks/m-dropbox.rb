cask "m-dropbox" do
  arch arm: "&arch=arm64"

  version "203.3.4812"
  sha256 :no_check

  url "https://www.dropbox.com/download?build=#{version}&plat=mac&rtoken=&type=full#{arch}"

  livecheck do
    cask "dropbox@beta"
  end

  app "Dropbox.app"
end
