cask "m-mouseless" do
  version "0.2.1"
  sha256 :no_check

  url "https://github.com/croian/mouseless-issues/releases/download/v#{version}/mouseless-installer_v#{version}.dmg"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  app "Mouseless.app"
end
