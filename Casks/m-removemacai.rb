cask "m-removemacai" do
  version "1.0.0"

  url "https://github.com/omlahore/RemoveMacAI/releases/download/v#{version}/RemoveMacAI.zip"

  app "RemoveMacAI.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "{{staged_path}}/RemoveMacAI.app"],
        sudo:         false,
        must_succeed: false,
        print_stderr: false
  end
end
