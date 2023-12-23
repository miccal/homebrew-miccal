cask "z-test" do
  arch arm: "arm64", intel: "x64"

  version "1.4.2"
  sha256 :no_check

  url "https://github.com/heyman/heynote/releases/download/v#{version}/Heynote_#{version}_#{arch}.dmg"
  name "Test"
  homepage "http://www.paperstreetsoap.company/"

  app "Test.app"
end
