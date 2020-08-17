cask "mantest2" do
  version "1"
  sha256 :no_check

  url "https://github.com/miccal/personal-files/blob/master/mantest.1"
  name "mantest2"
  homepage "https://github.com/"

  manpage "#{staged_path}/mantest.1"
end
