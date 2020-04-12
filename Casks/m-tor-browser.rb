cask 'm-tor-browser' do
  version '9.0.9'
  sha256 :no_check

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/'

  app 'Tor Browser.app'
end
