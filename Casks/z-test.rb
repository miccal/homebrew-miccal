cask "z-test" do
  version "0.23.2"
  sha256 :no_check

  url "https://github.com/lacework/lacework-vulnerability-scanner/releases/download/v#{version}/lw-scanner-darwin-amd64"
  name "Test"
  homepage "http://www.paperstreetsoap.company/"

  app "Test.app"
end
