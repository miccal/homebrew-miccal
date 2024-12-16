cask "m-mouseless" do
  version "0.2.1"
  sha256 :no_check

  url "https://github.com/croian/mouseless-issues/releases/download/v#{version}/mouseless-installer_v#{version}.dmg"

  livecheck do
    url :url
    strategy :github_releases do |json|
      json.map do |release|
        next if release["draft"]

        release["tag_name"]
      end
    end
  end

  app "Mouseless.app"
end
