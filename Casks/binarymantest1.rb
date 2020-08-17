cask "binarymantest1" do
  version "1"
  sha256 :no_check

  url "https://github.com/miccal/personal-files/blob/master/test"
  name "binarymantest1"
  homepage "https://github.com/"

  suite "test"

  binary "#{appdir}/test/binarytest"
  manpage "#{appdir}/test/mantest.1"
end
