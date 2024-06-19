cask "m-etrecheckpro" do
  version "6.8.5"
  sha256 :no_check

  url "https://cdn.etrecheck.com/EtreCheckPro.zip"
  name "EtreCheck"
  homepage "https://etrecheck.com/"

  livecheck do
    cask "etrecheckpro"
  end

  app "EtreCheckPro.app"
end
