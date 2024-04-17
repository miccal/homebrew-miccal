cask "m-tor-browser" do
  version "13.0.14"
  sha256 :no_check

  url "https://archive.torproject.org/tor-package-archive/torbrowser/#{version}/tor-browser-macos-#{version}.dmg"
  name "Tor Browser"
  homepage "https://www.torproject.org/"

  livecheck do
    skip "Check https://archive.torproject.org/tor-package-archive/torbrowser/?C=M;O=D and https://dist.torproject.org/torbrowser/?C=M;O=D"
  end

  # Stable:
  app "Tor Browser.app"
  # Alpha:
  #app "Tor Browser Alpha.app", target: "Tor Browser.app"
end
