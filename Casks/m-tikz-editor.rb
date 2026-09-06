cask "m-tikz-editor" do
  version "0.5.2"

  url "https://github.com/DominikPeters/tikz-editor/releases/download/app-v#{version}/TikZ.Editor_#{version}_aarch64.dmg"

  app "TikZ Editor.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "/Applications/TikZ Editor.app"],
        sudo:         false,
        must_succeed: false,
        print_stderr: false
  end
end
