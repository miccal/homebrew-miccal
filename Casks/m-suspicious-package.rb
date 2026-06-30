cask "m-suspicious-package" do
  version "4.6.2,1311.4"

  url "https://www.mothersruin.com/software/downloads/SuspiciousPackage.dmg"

  livecheck do
    cask "suspicious-package"
  end

  app "Suspicious Package.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "com.apple.quarantine", "#{staged_path}/Suspicious Package.app"],
                   sudo:         false,
                   must_succeed: false,
                   print_stderr: false
  end
end
