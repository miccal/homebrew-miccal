cask "z-test" do
  version :latest
  sha256 :no_check

  url ""
  name "Test"
  homepage "http://www.paperstreetsoap.company/"

  livecheck do
    url 
  end

  app "Test.app"
end
