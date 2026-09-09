cask "m-processspy" do
  version "1.15.1"

  url "https://process-spy.app/archive/ProcessSpy_#{version}.dmg"

  livecheck do
    cask "processspy"
  end

  app "ProcessSpy.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "{{staged_path}}/ProcessSpy.app"],
        sudo:         false,
        must_succeed: false,
        print_stderr: false
  end
end
