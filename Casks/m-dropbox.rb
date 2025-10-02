cask "m-dropbox" do
  version "234.3.5540"
  sha256 :no_check

  url "https://www.dropbox.com/download?build=#{version}&plat=mac&rtoken=&type=full&arch=arm64"

  livecheck do
    cask "dropbox@beta"
  end

  app "Dropbox.app"
end
