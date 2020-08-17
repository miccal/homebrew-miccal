cask "binarymantest1" do
  version "1"
  sha256 :no_check

  url "https://github.com/miccal/personal-files/blob/master/test.dmg"
  name "binarymantest1"
  homepage "https://github.com/"

  suite "test"

  binary "#{appdir}/binarytest"
  manpage "#{appdir}/mantest.1"
end
