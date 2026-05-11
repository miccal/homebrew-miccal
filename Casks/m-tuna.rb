cask "m-tuna" do
  version "0.68,1343"

  url "https://tunaformac.com/download/releases/#{version.csv.second}"

  livecheck do
    url "https://tunaformac.com/download/latest"
    strategy :header_match
    regex(/tuna[._-]v?(\d+(?:\.\d+)+)[._-]v?(\d+)\.zip/i)
  end

  app "Tuna.app"
end
