cask "m-obs" do
  arch arm: "Apple", intel: "Intel"

  version "30.2.0-beta3"
  sha256 :no_check

  url "https://github.com/obsproject/obs-studio/releases/download/#{version}/OBS-Studio-#{version}-macOS-#{arch}.dmg",
      verified: "github.com/obsproject/obs-studio/"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/"

  livecheck do
    url :url
    regex(/v?(\d+(?:[.-]\d+)+(?:(?:-beta\d+)|(?:-rc\d+))?)/i)
  end

  app "OBS.app"
  shimscript = "#{staged_path}/obs.wrapper.sh"
  binary shimscript, target: "obs"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/bash
      exec '#{appdir}/OBS.app/Contents/MacOS/OBS' "$@"
    EOS
  end
end
