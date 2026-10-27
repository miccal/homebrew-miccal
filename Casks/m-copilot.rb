cask "m-copilot" do
  version "156.0.4314.41"

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/dde69ffb-af77-4d45-96a4-41945ba0a036/Copilot-#{version}.pkg"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=2325114"
    regex(/copilot[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
    strategy :header_match
  end

  pkg "Copilot-#{version}.pkg"
end
