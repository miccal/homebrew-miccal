cask "m-fileutils" do
  version "1.6.2b1"

  # Stable:
  #url "https://fileutils.com/updates/NoSandbox/FileUtils.dmg"
  # Beta:
  url "https://fileutils.com/updates/NoSandbox/FileUtils_beta.dmg"

  livecheck do
    url "https://fileutils.com/updates/NoSandbox/appcast.php"
    strategy :sparkle, &:short_version
  end

  app "FileUtils.app"
end
