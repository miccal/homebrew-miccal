cask "google-chrome" do
  version "126.0.6478.62"
  sha256 :no_check

  url "https://dl.google.com/chrome/mac/universal/stable/GGRO/googlechrome.dmg"
  desc "Web browser"
  homepage "https://www.google.com/chrome/"

  livecheck do
    url "https://chromiumdash.appspot.com/fetch_releases?channel=Stable&platform=Mac"
    strategy :page_match do |page|
      JSON.parse(page)[0]["version"]
    end
  end

  app "Google Chrome.app"
end
