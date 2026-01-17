cask "m-keepingyouawake" do
  version "1.6.8"

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip"

  livecheck do
    url :url
    strategy :github_releases do |json|
      json.map do |release|
        next if release["draft"]

        release["tag_name"]
      end
    end
  end

  app "KeepingYouAwake.app"

  uninstall on_upgrade: :quit
end
