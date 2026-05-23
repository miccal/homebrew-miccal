cask "m-tuna" do
  version "0.72,1405"

  url "https://tunaformac.com/download/releases/#{version.csv.second}"

  livecheck do
    cask "tuna"
  end

  app "Tuna.app"
end
