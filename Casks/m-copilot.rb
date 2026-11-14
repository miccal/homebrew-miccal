cask "m-copilot" do
  version "157.0.4341.55,c1457dea-68df-4466-8766-add66540cab6"

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/Copilot-#{version.csv.first}.pkg"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=2325114"
    regex(%r{/([^/]+)/Copilot[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  pkg "Copilot-#{version.csv.first}.pkg"
end
