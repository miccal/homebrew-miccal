cask "m-mathpix-snipping-tool" do
  version "3.4.7.2"
  sha256 :no_check

  url "https://mathpix.com/dmg/SnippingTool-v#{version}.dmg"
  name "Mathpix Snipping Tool"
  homepage "https://mathpix.com/"

  livecheck do
    cask "mathpix-snipping-tool"
  end

  app "Mathpix Snipping Tool.app"
end
