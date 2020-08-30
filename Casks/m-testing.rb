cask "m-testing" do
  version "1"
  sha256 :no_check

  # test
  url "https://www.dropbox.com/download?plat=mac&full=1"
  name "Dropbox"
  homepage "https://www.dropbox.com/"

  app "Dropbox.app", target: "m-testing.app"
  binary "#{appdir}/Dropbox.app/Contents/MacOS/Dropbox", target: "m-testing"
end
