cask "m-mathpix-snipping-tool" do
  version "3.4.19.12"

  url "https://mathpix.com/dmg/SnippingTool-v#{version}.dmg"

  livecheck do
    cask "mathpix-snipping-tool"
  end

  app "Mathpix Snipping Tool.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "com.apple.quarantine", "#{staged_path}/Mathpix Snipping Tool.app"],
                   sudo:         false,
                   must_succeed: false,
                   print_stderr: false
  end
end
