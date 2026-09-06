cask "m-batt" do
  version "0.8.0"

  url "https://github.com/charlie0129/batt/releases/download/v#{version}/batt-v#{version}.dmg"

  app "batt.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "/Applications/batt.app"],
        sudo:         false,
        must_succeed: false,
        print_stderr: false
  end
end
