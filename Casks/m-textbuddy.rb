cask "m-textbuddy" do
  version "1.4.3,28"
  sha256 :no_check

  url "https://get.retina.studio/textbuddy/textbuddy_#{version.csv.second}.zip"

  livecheck do
    cask "textbuddy"
  end

  app "TextBuddy.app"
end
