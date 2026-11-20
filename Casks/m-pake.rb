cask "m-pake" do
  version "1.10.2"

  url "https://pake.run/updates/mac/Pake-#{version}.dmg"

  livecheck do
    cask "pake-app"
  end

  app "Pake.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "{{staged_path}}/Pake.app"],
        sudo:         false,
        must_succeed: false,
        print_stderr: false
  end
end
