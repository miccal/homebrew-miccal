cask "m-dropbox" do
  version "237.3.5620"

  url "https://www.dropbox.com/download?build=#{version}&plat=mac&rtoken=&type=full&arch=arm64"

  livecheck do
    cask "dropbox@beta"
  end

  app "Dropbox.app"
end
