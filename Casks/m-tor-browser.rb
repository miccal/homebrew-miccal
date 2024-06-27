cask "m-tor-browser" do
  version "2024.06.20.18.08,13.5"
  sha256 :no_check

  url "https://dist.torproject.org/torbrowser/#{version.csv.second}/tor-browser-macos-#{version.csv.second}.dmg"

  livecheck do
    url "https://dist.torproject.org/torbrowser/"
    regex(/(\d+(?:.\d+)+).*?(\d{4}-\d{2}-\d{2})\s*?(\d{2}:\d{2})/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[2].tr("-", ".")}.#{match[3].tr(":", ".")},#{match[1]}"
    end
  end

  # Stable:
  app "Tor Browser.app"
  # Alpha:
  #app "Tor Browser Alpha.app", target: "Tor Browser.app"
end
