cask "m-tor-browser" do
  version "13.5.1"
  sha256 :no_check

  url "https://dist.torproject.org/torbrowser/#{version.csv.second}/tor-browser-macos-#{version.csv.second}.dmg"

  livecheck do
    url "https://dist.torproject.org/torbrowser/?C=M;O=A"
    regex(%r{href=["']?v?(\d+(?:.\d+)+)/?["' >]}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1]
    end
  end

  # Stable:
  app "Tor Browser.app"
  # Alpha:
  #app "Tor Browser Alpha.app", target: "Tor Browser.app"
end
