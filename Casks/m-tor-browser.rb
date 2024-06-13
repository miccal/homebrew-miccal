cask "m-tor-browser" do
  version "13.0.16"
  sha256 :no_check

  url "https://archive.torproject.org/tor-package-archive/torbrowser/#{version.csv.second}/tor-browser-macos-#{version.csv.second}.dmg"
  name "Tor Browser"
  homepage "https://www.torproject.org/"

  livecheck do
    url "https://dist.torproject.org/torbrowser/?C=M;O=D"
    strategy :page_match do |page|
      match = page.match(/(\d+(?:.\d+)+).*(\d{4}-\d{2}-\d{2})\s(\d{2}:\d{2})/i)
      next if match.blank?

      "#{match[2].tr("-",".")}.#{match[3].tr(":",".")},#{match[1]}"
    end
  end

  # Stable:
  app "Tor Browser.app"
  # Alpha:
  #app "Tor Browser Alpha.app", target: "Tor Browser.app"
end
