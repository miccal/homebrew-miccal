cask "m-ipe" do
  arch arm: "arm", intel: "intel"

  version "7.2.29"
  sha256 :no_check

  url "https://github.com/otfried/ipe/releases/download/v#{version}/ipe-#{version}-mac-#{arch}.dmg"

  livecheck do
    cask "ipe"
  end

  app "Ipe.app"
  shimscript = "#{staged_path}/ipe.wrapper.sh"
  binary shimscript, target: "ipe"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/bash
      exec '#{appdir}/Ipe.app/Contents/MacOS/ipe' "$@"
    EOS
  end

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-d", "-r", "com.apple.quarantine", "#{appdir}/Ipe.app"],
                   sudo: true
  end

  caveats <<~EOS
    Launch #{token} via the binary to ensure LaTex runs without issue.
  EOS
end
