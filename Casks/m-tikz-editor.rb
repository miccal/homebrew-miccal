cask "m-tikz-editor" do
  version "0.5.1"

  url "https://github.com/DominikPeters/tikz-editor/releases/download/app-v#{version}/TikZ.Editor_#{version}_aarch64.dmg"

  app "TikZ Editor.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "com.apple.quarantine", "#{staged_path}/TikZ Editor.app"],
                   sudo:         false,
                   must_succeed: false,
                   print_stderr: false
  end
end
