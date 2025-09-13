cask "m-omnidisksweeper" do
  version "1.16"
  sha256 :no_check

  url "https://downloads.omnigroup.com/software/macOS/11/OmniDiskSweeper-#{version}.dmg"

  livecheck do
    url "https://www.omnigroup.com/download/latest/OmniDiskSweeper"
    strategy :header_match
  end

  app "OmniDiskSweeper.app"
end
