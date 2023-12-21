cask "z-test" do
  version :latest
  sha256 :no_check

  url "http://xactupdate.scottcbrown.org/xACT.xml"
  name "Test"
  homepage "http://www.paperstreetsoap.company/"

  livecheck do
    url "http://xactupdate.scottcbrown.org/xACT.xml"
    strategy :sparkle, &:short_version
  end

  app "Test.app"
end
