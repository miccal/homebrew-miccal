cask "m-mole" do
  version "1.8.0"

  # Stable:
  #url "https://mole.fit/Mole.dmg"
  # Preview:
  url "https://mole.fit/Mole-preview.dmg"

  livecheck do
    cask "mole-app"
  end

  app "Mole.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-d", "com.apple.quarantine", "#{staged_path}/Mole.app"],
      sudo: false,
      must_succeed: false,
      print_stderr: false
  end
end
