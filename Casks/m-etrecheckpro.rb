cask "m-etrecheckpro" do
  version "6.8.15"

  url "https://cdn.etrecheck.com/EtreCheckPro.zip"

  livecheck do
    cask "etrecheckpro"
  end

  app "EtreCheckPro.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "com.apple.quarantine", "#{staged_path}/EtreCheckPro.app"],
                   sudo:         false,
                   must_succeed: false,
                   print_stderr: false
  end
end
