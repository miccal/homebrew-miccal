cask "binarymantest1" do
  version "1"
  sha256 :no_check

  url "https://github.com/miccal/personal-files/blob/master/test.zip"
  name "binarymantest1"
  homepage "https://github.com/"

  binary "#{staged_path}/test/binarytest"
  manpage "#{staged_path}/test/mantest.1"
end
