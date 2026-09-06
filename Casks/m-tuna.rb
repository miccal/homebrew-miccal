cask "m-tuna" do
  version "0.96,2096"

  url "https://tunaformac.com/download/releases/#{version.csv.second}"

  livecheck do
    cask "tuna"
  end

  app "Tuna.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "{{staged_path}}/Tuna.app"],
        sudo:         false,
        must_succeed: false,
        print_stderr: false
  end
end
