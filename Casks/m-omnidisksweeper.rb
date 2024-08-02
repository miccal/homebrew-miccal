cask "m-omnidisksweeper" do
  version "1.15"
  sha256 :no_check

  url "https://downloads.omnigroup.com/software/macOS/11/OmniDiskSweeper-#{version}.dmg"

  livecheck do
    cask "omnidisksweeper"
  end

  app "OmniDiskSweeper.app"
end
