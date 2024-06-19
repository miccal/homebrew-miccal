cask "ipe" do
  arch arm: "arm", intel: "intel"

  version "7.2.29"
  sha256 arm:   "25afb5d6bd0f4f51e27823d86de470d6caa7600e8ee5111f633fa10879904b8c",
         intel: "8bfb970614be423f1bf716217be3db6faa4676c5fa55a51ef81a2e3c6d6edc4d"

  url "https://github.com/otfried/ipe/releases/download/v#{version}/ipe-#{version}-mac-#{arch}.dmg"
  name "Ipe"
  homepage "https://ipe.otfried.org/"

  livecheck do
    url :homepage
    regex(/href=.*?ipe[._-](\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.dmg/i)
  end

  app "Ipe.app"
end
