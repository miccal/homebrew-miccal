cask "m-launchcontrol" do
  version "2.10.5"

  url "https://www.soma-zone.com/download/files/LaunchControl-#{version}.tar.xz"

  livecheck do
    cask "launchcontrol"
  end

  app "LaunchControl.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "com.apple.quarantine", "#{staged_path}/LaunchControl.app"],
                   sudo:         false,
                   must_succeed: false,
                   print_stderr: false
  end
end
