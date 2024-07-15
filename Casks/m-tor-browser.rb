cask "m-tor-browser" do
  version "2024.07.10.12.30,13.5.1"
  sha256 :no_check

  url "https://dist.torproject.org/torbrowser/#{version.csv.second}/tor-browser-macos-#{version.csv.second}.dmg"

  livecheck do
    url "https://dist.torproject.org/torbrowser/"
    regex(%r{href=["']?v?(\d+(?:.\d+)+)/?["' >].*?(\d{4}-\d{2}-\d{2})\s(\d{2}:\d{2})}im)
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
