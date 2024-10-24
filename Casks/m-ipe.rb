cask "m-ipe" do
  arch arm: "arm", intel: "intel"

  version "7.2.29"
  sha256 :no_check

  url "https://github.com/otfried/ipe/releases/download/v#{version}/ipe-#{version}-mac-#{arch}.dmg"

  livecheck do
    cask "ipe"
  end

  app "Ipe.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-d", "-r", "com.apple.quarantine", "#{appdir}/Ipe.app"],
                   sudo: true
  end

  caveats <<~EOS
    The postflight block removes the extended attribute "com.apple.quarantine" of #{token}.
  EOS
end
