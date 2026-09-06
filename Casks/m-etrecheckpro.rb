cask "m-etrecheckpro" do
  version "6.8.16"

  url "https://cdn.etrecheck.com/EtreCheckPro.zip"

  livecheck do
    cask "etrecheckpro"
  end

  app "EtreCheckPro.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "/Applications/EtreCheckPro.app"],
        sudo:         false,
        must_succeed: false,
        print_stderr: false
  end
end
