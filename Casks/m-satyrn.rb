cask "m-satyrn" do
  arch arm: "arm64", intel: "x64"

  version "0.0.98"
  sha256 :no_check

  url "https://satyrn-updates.s3.amazonaws.com/satyrn-#{version}-#{arch}.dmg"

  livecheck do
    cask "satyrn"
  end

  app "satyrn.app"
end
