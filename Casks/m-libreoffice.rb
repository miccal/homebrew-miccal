cask "m-libreoffice" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.2.0.0.alpha1"
  sha256 :no_check

  #url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}.dmg"
  #url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}.dmg"
  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/#{folder}/LibreOfficeDev_#{version}_MacOS_#{arch}.dmg"
  name "LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    url "https://download.documentfoundation.org/libreoffice/testing/"
    regex(%r{href=["']v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  #app "LibreOffice.app"
  app "LibreOfficeDev.app", target: "LibreOffice.app"
  shimscript = "#{staged_path}/soffice.wrapper.sh"
  binary shimscript, target: "libreoffice"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      "#{appdir}/LibreOffice.app/Contents/MacOS/soffice" "$@"
    EOS
  end
end
