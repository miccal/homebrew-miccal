cask "mantest1" do
  version "1"
  sha256 :no_check

  url "https://github.com/miccal/personal-files/blob/master/mantest.1"
  name "mantest1"
  homepage "https://github.com/"

  manpage "#{staged_path}/mantest.1"
end
