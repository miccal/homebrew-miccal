cask "m-annotate" do
  version "1.4.0"

  url "https://github.com/epilande/Annotate/releases/download/v#{version}/Annotate-#{version}.dmg"

  app "Annotate.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "com.apple.quarantine", "#{staged_path}/Annotate.app"],
                   sudo:         false,
                   must_succeed: false,
                   print_stderr: false
  end
end
