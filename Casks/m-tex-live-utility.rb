cask "m-tex-live-utility" do
  version "1.54"
  sha256 :no_check

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.zip"
  name "TeX Live Utility"
  homepage "https://github.com/amaxwell/tlutility"

  livecheck do
    url :url
    strategy :github_releases do |json|
      json.map do |release|
        next if release["draft"]

        release["tag_name"]
      end
    end
  end

  app "TeX Live Utility.app"
end
