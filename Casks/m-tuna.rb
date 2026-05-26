cask "m-tuna" do
  version "0.74,1431"

  url "https://tunaformac.com/download/releases/#{version.csv.second}"

  livecheck do
    cask "tuna"
  end

  app "Tuna.app"
end
