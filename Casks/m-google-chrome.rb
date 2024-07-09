cask "m-google-chrome" do
  version "126.0.6478.127"
  sha256 :no_check

  url "https://dl.google.com/chrome/mac/universal/stable/GGRO/googlechrome.dmg"

  livecheck do
    url "https://chromiumdash.appspot.com/fetch_releases?channel=Extended&platform=Mac"
    strategy :page_match do |page|
      JSON.parse(page)[1]["version"]
    end
  end

  app "Google Chrome.app"
end
