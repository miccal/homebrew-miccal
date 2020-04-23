cask 'textedit-cli' do
  version :latest
  sha256 :no_check

  url 'https://github.com/miccal/personal-files/blob/master/uwa_logo.pdf'
  shimscript = "#{staged_path}/textedit.wrapper.sh"
  binary shimscript, target: 'textedit'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '/System/Applications/TextEdit.app/Contents/MacOS/TextEdit' "$@"
    EOS
  end
end
