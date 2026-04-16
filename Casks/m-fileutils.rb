cask "m-fileutils" do
  version "1.6.1"

  url "https://fileutils.com/updates/NoSandbox/FileUtils.dmg"

  livecheck do
    url "https://fileutils.com/release-notes"
    regex(/Version\s(\d+(?:\.\d+)+)/i)
  end

  app "FileUtils.app"
end
