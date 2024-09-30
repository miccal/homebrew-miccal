cask "m-ipe" do
  arch arm: "arm", intel: "intel"

  version "7.2.29"
  sha256 :no_check

  url "https://github.com/otfried/ipe/releases/download/v#{version}/ipe-#{version}-mac-#{arch}.dmg"

  livecheck do
    cask "ipe"
  end

  app "Ipe.app"

  caveats <<~EOS
    On macOS Sequoia, #{token} is not able to run LaTex commands if Ipe.app is launched from Finder:
      https://github.com/otfried/ipe/issues/526
    Launching Ipe.app via the command
     open /Applications/Ipe.app
    solves this issue.
  EOS
end
