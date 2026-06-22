cask "m-processspy" do
  version "1.14.0"

  url "https://process-spy.app/archive/ProcessSpy_#{version}.dmg"

  livecheck do
    cask "processspy"
  end

  app "ProcessSpy.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "com.apple.quarantine", "#{staged_path}/ProcessSpy.app"],
                   sudo:         false,
                   must_succeed: false,
                   print_stderr: false
  end
end
