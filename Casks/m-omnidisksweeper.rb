cask "m-omnidisksweeper" do
  version "1.14"
  sha256 :no_check

  url "https://downloads.omnigroup.com/software/macOS/11/OmniDiskSweeper-#{version}.dmg"
  name "OmniDiskSweeper"
  homepage "https://www.omnigroup.com/more/"

  livecheck do
    cask "omnidisksweeper"
  end

  app "OmniDiskSweeper.app"
end
