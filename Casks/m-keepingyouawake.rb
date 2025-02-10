cask "m-keepingyouawake" do
  version "1.6.6"
  sha256 :no_check

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip"

  livecheck do
    cask "keepingyouawake"
  end

  app "KeepingYouAwake.app"
end
