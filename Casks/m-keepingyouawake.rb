cask "m-keepingyouawake" do
  version "1.6.5"
  sha256 :no_check

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip"
  name "KeepingYouAwake"
  homepage "https://keepingyouawake.app/"

  livecheck do
    cask "keepingyouawake"
  end

  app "KeepingYouAwake.app"
end
