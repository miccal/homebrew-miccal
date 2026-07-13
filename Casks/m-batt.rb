cask "m-batt" do
  version "0.7.5"

  url "https://github.com/charlie0129/batt/releases/download/v#{version}/batt-v#{version}.dmg"

  app "batt.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "com.apple.quarantine", "#{staged_path}/batt.app"],
                   sudo:         false,
                   must_succeed: false,
                   print_stderr: false
  end
end
