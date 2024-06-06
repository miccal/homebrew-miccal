cask "z-test" do
  version ""
  sha256 :no_check

  url ""
  name "Test"
  homepage "http://www.paperstreetsoap.company/"

 livecheck do
    url :url
    strategy :github_latest
  end

  app "Test.app"
end
