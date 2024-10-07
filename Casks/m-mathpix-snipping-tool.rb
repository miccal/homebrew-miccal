cask "m-mathpix-snipping-tool" do
  version "3.4.11.2"
  sha256 :no_check

  url "https://mathpix.com/dmg/SnippingTool-v#{version}.dmg"

  livecheck do
    cask "mathpix-snipping-tool"
  end

  app "Mathpix Snipping Tool.app"
end
