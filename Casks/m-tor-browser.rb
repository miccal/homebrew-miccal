cask "m-tor-browser" do
  version "13.0"
  sha256 :no_check

  url "https://dist.torproject.org/torbrowser/#{version}/tor-browser-macos-#{version}.dmg"
  name "Tor Browser"
  homepage "https://www.torproject.org/"

  livecheck do
    skip "Check tor-browser and tor-browser-alpha"
  end

  app "Tor Browser.app"
end
