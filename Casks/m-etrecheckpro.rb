cask "m-etrecheckpro" do
  version "6.8.14"

  url "https://cdn.etrecheck.com/EtreCheckPro.zip"

  livecheck do
    cask "etrecheckpro"
  end

  app "EtreCheckPro.app"
end
