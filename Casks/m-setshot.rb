cask "m-setshot" do
  version "1.0.1"

  url "https://github.com/adamengst/setshot-app/releases/download/v#{version}/SetShot-#{version}.zip"

  livecheck do
    cask "setshot"
  end

  app "SetShot.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "{{staged_path}}/SetShot.app"],
        sudo:         false,
        must_succeed: false,
        print_stderr: false
  end
end
