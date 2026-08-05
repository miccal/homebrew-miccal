cask "m-suspicious-package" do
  version "4.7"

  url "https://www.mothersruin.com/software/archives/SuspiciousPackage-#{version}.dmg"

  livecheck do
    cask "suspicious-package"
  end

  app "Suspicious Package.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "com.apple.quarantine", "#{staged_path}/Suspicious Package.app"],
                   sudo:         true,
                   must_succeed: false,
                   print_stderr: false
  end
end
