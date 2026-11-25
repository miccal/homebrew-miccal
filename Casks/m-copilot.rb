cask "m-copilot" do
  version "158.0.4370.33,aebe7225-40e8-4c6e-a6ae-0a98c6b2c713"

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/Copilot-#{version.csv.first}.pkg"

  livecheck do
    cask "microsoft-copilot"
  end

  pkg "Copilot-#{version.csv.first}.pkg"
end
