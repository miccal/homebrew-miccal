cask "m-mpv" do
  version "2023.1"
  sha256 :no_check

  url "https://github.com/vitorgalvao/mpv-dummy/releases/download/#{version}/mpv-dummy.zip"
  name "mpv"
  homepage "https://mpv.io/"

  depends_on formula: "mpv"

  app "mpv.app"
end
