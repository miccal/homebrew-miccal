cask "m-tor-browser" do
  version "11.0.13"
  sha256 :no_check

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  name "Tor Browser"
  homepage "https://www.torproject.org/"

  livecheck do
    skip "Check tor-browser and tor-browser-alpha"
  end

  app "Tor Browser.app"
end
