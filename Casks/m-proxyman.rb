cask "m-proxyman" do
  version "6.14.0,61400"

  url "https://download.proxyman.com/#{version.csv.second}/Proxyman_#{version.csv.first}.dmg"

  livecheck do
    cask "proxyman"
  end

  app "Proxyman.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "com.apple.quarantine", "#{staged_path}/Proxyman.app"],
                   sudo:         true,
                   must_succeed: false,
                   print_stderr: false
  end
end
