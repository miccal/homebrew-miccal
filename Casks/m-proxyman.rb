cask "m-proxyman" do
  version "26.0.1,260001"

  url "https://download.proxyman.com/#{version.csv.second}/Proxyman_#{version.csv.first}.dmg"

  livecheck do
    cask "proxyman"
  end

  app "Proxyman.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "{{staged_path}}/Proxyman.app"],
        sudo:         true,
        must_succeed: false,
        print_stderr: false
  end
end
