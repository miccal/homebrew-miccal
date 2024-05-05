cask "z-test" do
  version "1.9.2"
  sha256 :no_check

  url "https://github.com/Chilledheart/yass/releases/download/#{version}/yass-macos-release-arm64-#{version}.dmg"
  name "Test"
  homepage "http://www.paperstreetsoap.company/"

 livecheck do
    url :url
    strategy :github_latest
  end

  app "Test.app"
end
