cask "m-google-chrome" do
  version "138.0.7204.50"
  sha256 :no_check

  url "https://dl.google.com/chrome/mac/universal/stable/GGRO/googlechrome.dmg"

  livecheck do
    url "https://chromiumdash.appspot.com/fetch_releases?channel=Stable&platform=Mac"
    strategy :json do |json|
      json.map { |item| item["version"] }
    end
  end

  app "Google Chrome.app"
end
