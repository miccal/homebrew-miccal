cask "m-tor-browser" do
  version "13.5.1"
  sha256 :no_check

  url "https://dist.torproject.org/torbrowser/#{version.csv.second}/tor-browser-macos-#{version.csv.second}.dmg"

  livecheck do
    url "https://dist.torproject.org/torbrowser/?C=M;O=D"
    regex(%r{href=["']?v?(\d+(?:.\d+)+)/?["' >]}i)
  end

  # Stable:
  app "Tor Browser.app"
  # Alpha:
  #app "Tor Browser Alpha.app", target: "Tor Browser.app"
end
