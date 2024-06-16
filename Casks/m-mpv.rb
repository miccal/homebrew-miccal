cask "m-mpv" do
  version "2023.2"
  sha256 :no_check

  url "https://github.com/vitorgalvao/mpv-dummy/releases/download/#{version}/mpv.DUMMY.dmg"
  name "mpv"
  homepage "https://mpv.io/"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on formula: "mpv"

  app "mpv.app"
end
