cask "m-etrecheckpro" do
  version "6.8.6"
  sha256 :no_check

  url "https://cdn.etrecheck.com/EtreCheckPro.zip"

  livecheck do
    cask "etrecheckpro"
  end

  app "EtreCheckPro.app"
end
