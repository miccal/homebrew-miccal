cask "m-tor-browser" do
  version "12.0a4"
  sha256 :no_check

  #url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx64_ALL.dmg"
  name "Tor Browser"
  homepage "https://www.torproject.org/"

  livecheck do
    skip "Check tor-browser and tor-browser-alpha"
  end

  app "Tor Browser.app"
end
