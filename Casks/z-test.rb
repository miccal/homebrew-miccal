cask "z-test" do
  version "1"
  sha256 :no_check

  url "https://github.com/Blockstream/green_qt/releases/download/release_1/BlockstreamGreen_MacOS_x86_64.zip"
  name "Test"
  homepage "http://www.paperstreetsoap.company/"

  app "Test.app"
end
