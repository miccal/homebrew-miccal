cask "m-mole" do
  version "1.14.0"

  url "https://mole.fit/Mole.dmg"

  livecheck do
    cask "mole-app"
  end

  app "Mole.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "{{staged_path}}/Mole.app"],
        sudo:         false,
        must_succeed: false,
        print_stderr: false
  end
end
