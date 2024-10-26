cask "m-dockside" do
  version "1.5.5"
  sha256 :no_check

  url "https://github.com/PrajwalSD/Dockside/releases/download/v#{version}/Dockside.dmg"

  livecheck do
    cask "dockside"
  end

  app "Dockside.app"
end
