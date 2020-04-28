cask 'm-libreoffice' do
  version '6.4.3,stable'
  sha256 :no_check

  if version.after_comma = stable
    url "https://mirror.aarnet.edu.au/pub/libreoffice/stable/#{version.before_comma}/mac/x86_64/LibreOffice_#{version.before_comma}_MacOS_x86-64.dmg"
  else
    url "https://mirror.aarnet.edu.au/pub/libreoffice/testing/#{version.before_comma}/mac/x86_64/LibreOffice_#{version.before_comma}.#{version.after_comma}_MacOS_x86-64.dmg"
  end

  name 'LibreOffice'
  homepage 'https://www.libreoffice.org/'

  app 'LibreOffice.app'
  shimscript = "#{staged_path}/soffice.wrapper.sh"
  binary shimscript, target: 'libreoffice'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/LibreOffice.app/Contents/MacOS/soffice' "$@"
    EOS
  end
end
