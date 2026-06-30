cask "m-whatcable" do
  version "1.1.7"

  url "https://github.com/darrylmorley/whatcable/releases/download/v#{version}/WhatCable.zip"

  app "WhatCable.app"
  binary "#{appdir}/WhatCable.app/Contents/Helpers/whatcable"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "com.apple.quarantine", "#{staged_path}/WhatCable.app"],
                   sudo:         false,
                   must_succeed: false,
                   print_stderr: false
  end
end
