cask "m-dropbox" do
  version "250.3.3196"

  url "https://www.dropbox.com/download?build=#{version}&plat=mac&rtoken=&type=full&arch=arm64"

  livecheck do
    url "https://community.dropbox.com/en/categories/dropbox-desktop-client-builds"
    regex(/Beta\sBuild\s(\d+(?:\.\d+)+)/i)
  end

  app "Dropbox.app"
end
