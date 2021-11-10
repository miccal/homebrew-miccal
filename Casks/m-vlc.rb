cask "m-vlc" do
  version "3.0.16"
  sha256 :no_check

  url "https://mirror.aarnet.edu.au/pub/videolan/vlc/#{version}/macosx/vlc-#{version}-intel64.dmg"
  name "VLC media player"
  homepage "https://www.videolan.org/vlc/"

  livecheck do
    url "https://mirror.aarnet.edu.au/pub/videolan/vlc/?C=M;O=D"
    strategy :page_match
    regex(/href="(\d+(?:\.\d+)+)/i)
  end

  app "VLC.app"
  shimscript = "#{staged_path}/vlc.wrapper.sh"
  binary shimscript, target: "vlc"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      "#{appdir}/VLC.app/Contents/MacOS/VLC" "$@"
    EOS
  end
end
