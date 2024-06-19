cask "m-keepingyouawake" do
  version "1.6.5"
  sha256 "4e9d879c95cbf8e25370974c2b8875f17b2aa3b9c295bb76d0da74cd833afe04"

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip"
  name "KeepingYouAwake"
  homepage "https://keepingyouawake.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "KeepingYouAwake.app"
end
