cask "m-tex-live-utility" do
  version "1.40"
  sha256 :no_check

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.dmg"
  name "TeX Live Utility"
  homepage "https://github.com/amaxwell/tlutility"

  app "TeX Live Utility.app"
end
