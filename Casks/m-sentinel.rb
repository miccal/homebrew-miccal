cask "m-sentinel" do
  version "3.1.1"
  sha256 :no_check

  url "https://github.com/alienator88/Sentinel/releases/download/#{version}/Sentinel.zip"

  livecheck do
    cask "alienator88-sentinel"
  end

  app "Sentinel.app"
end
