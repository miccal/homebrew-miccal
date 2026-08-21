cask "m-bramble" do
  version "0.4.0"

  url "https://github.com/flythenimbus/bramble/releases/download/#{version}-desktop/Bramble_#{version}_universal.dmg"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)[._-]desktop$/i)
  end

  app "Bramble.app"
end
