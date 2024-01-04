cask "z-test" do
  version "5.0.0"
  sha256 :no_check

  url "https://github.com/wakatime/macos-wakatime/releases/download/v#{version}/macos-wakatime.zip"
  name "Test"
  homepage "http://www.paperstreetsoap.company/"

  app "Test.app"
end
