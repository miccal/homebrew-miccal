cask "m-google-chrome" do
  version :latest

  url "https://dl.google.com/chrome/mac/universal/stable/GGRO/googlechrome.dmg"

  app "Google Chrome.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "com.apple.quarantine", "#{staged_path}/Google Chrome.app"],
                   sudo:         false,
                   must_succeed: false,
                   print_stderr: false
  end
end
