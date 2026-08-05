cask "m-apparency" do
  version "3.3"

  url "https://www.mothersruin.com/software/archives/Apparency-#{version}.dmg"

  livecheck do
    cask "apparency"
  end

  app "Apparency.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "com.apple.quarantine", "#{staged_path}/Apparency.app"],
                   sudo:         false,
                   must_succeed: false,
                   print_stderr: false
end
