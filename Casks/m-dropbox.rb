cask "m-dropbox" do
  arch arm: "&arch=arm64"

  version "202.3.5441"
  sha256 arm:   "6a9364770ac96510a75741242ac9bdb3f0c289727407eaa07fd2bc2a592ca831",
         intel: "10ed113d1a4c7218d61bf34b3f5ebf1aede711ce328547a4587328b0b3f74aa2"

  url "https://www.dropbox.com/download?build=#{version}&plat=mac&rtoken=&type=full#{arch}"
  name "Dropbox"
  homepage "https://www.dropboxforum.com/t5/Dropbox-desktop-client-builds/bd-p/101003016"

  livecheck do
    cask "dropbox@beta"
  end

  app "Dropbox.app"
end
