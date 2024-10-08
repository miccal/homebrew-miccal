cask "m-pearcleaner" do
  version "3.9.1"
  sha256 :no_check

  url "https://github.com/alienator88/Pearcleaner/releases/download/#{version}/Pearcleaner.zip"

  livecheck do
    url :url
    strategy :github_releases do |json|
      json.map do |release|
        next if release["draft"]

        release["tag_name"]
      end
    end
  end

  app "Pearcleaner.app"
end
