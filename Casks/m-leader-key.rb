cask "m-leader-key" do
  version "1.6.0"
  sha256 :no_check

  url "https://github.com/mikker/LeaderKey.app/releases/download/v#{version}/Leader.Key.#{version}.zip"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+.*)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  app "Leader Key.app"
end
