cask "m-launchcontrol" do
  version "2.11"

  url "https://www.soma-zone.com/download/files/LaunchControl-#{version}.tar.xz"

  livecheck do
    cask "launchcontrol"
  end

  app "LaunchControl.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "/Applications/LaunchControl.app"],
        sudo:         false,
        must_succeed: false,
        print_stderr: false
  end
end
