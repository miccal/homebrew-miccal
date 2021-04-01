cask "m-libreoffice" do
  version "7.1.2"
  sha256 :no_check

  url "https://mirror.aarnet.edu.au/pub/libreoffice/stable/#{version.major_minor_patch}/mac/x86_64/LibreOffice_#{version.major_minor_patch}_MacOS_x86-64.dmg"
  #url "https://mirror.aarnet.edu.au/pub/libreoffice/testing/#{version.major_minor_patch}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  name "LibreOffice"
  homepage "https://www.libreoffice.org/"

  app "LibreOffice.app"
  shimscript = "#{staged_path}/soffice.wrapper.sh"
  binary shimscript, target: "libreoffice"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      "#{appdir}/LibreOffice.app/Contents/MacOS/soffice" "$@"
    EOS
  end
end
