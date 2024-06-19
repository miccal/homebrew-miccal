cask "m-dropbox" do
  arch arm: "&arch=arm64"

  version "202.3.5441"
  sha256 :no_check

  url "https://www.dropbox.com/download?build=#{version}&plat=mac&rtoken=&type=full#{arch}"
  name "Dropbox"
  homepage "https://www.dropboxforum.com/t5/Dropbox-desktop-client-builds/bd-p/101003016"

  livecheck do
    cask "dropbox@beta"
  end

  app "Dropbox.app"
end
