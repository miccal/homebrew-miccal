cask "m-mathpix-snipping-tool" do
  version "3.4.21.4"

  url "https://mathpix.com/dmg/SnippingTool-v#{version}.dmg"

  livecheck do
    cask "mathpix-snipping-tool"
  end

  app "Mathpix Snipping Tool.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "/Applications/Mathpix Snipping Tool.app"],
        sudo:         false,
        must_succeed: false,
        print_stderr: false
  end
end
