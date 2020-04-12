cask 'm-vlc' do
  version '3.0.9.2'
  sha256 :no_check

  url "https://mirror.aarnet.edu.au/pub/videolan/vlc/#{version}/macosx/vlc-#{version}.dmg"
  name 'VLC media player'
  homepage 'https://www.videolan.org/vlc/'

  app 'VLC.app'
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/vlc.wrapper.sh"
  binary shimscript, target: 'vlc'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/VLC.app/Contents/MacOS/VLC' "$@"
    EOS
  end
end
