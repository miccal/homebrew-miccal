cask "m-fileutils" do
  version "1.6.1"

  url "https://fileutils.com/updates/NoSandbox/FileUtils.dmg"

  livecheck do
    url "https://fileutils.com/updates/NoSandbox/appcast.php"
    strategy :sparkle, &:short_version
  end

  app "FileUtils.app"
end
