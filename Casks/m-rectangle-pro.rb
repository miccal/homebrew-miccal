cask "m-rectangle-pro" do
  version "3.89"

  url "https://rectangleapp.com/pro/downloads/Rectangle%20Pro%20#{version}.dmg"

  livecheck do
    cask "rectangle-pro"
  end

  app "Rectangle Pro.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "com.apple.quarantine", "#{staged_path}/Rectangle Pro.app"],
                   sudo:         false,
                   must_succeed: false,
                   print_stderr: false
  end
end
