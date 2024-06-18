cask "m-obs" do
  arch arm: "Apple", intel: "Intel"

  version "30.2.0-beta4"
  sha256 :no_check

  url "https://github.com/obsproject/obs-studio/releases/download/#{version}/OBS-Studio-#{version}-macOS-#{arch}.dmg"
  name "OBS"
  homepage "https://obsproject.com/"

  livecheck do
    url :url
    strategy :github_releases do |json|
      json.map do |release|
        next if release["draft"]

        release["tag_name"]
      end
    end
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
