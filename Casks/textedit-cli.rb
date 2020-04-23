cask 'textedit-cli' do
  shimscript = "#{staged_path}/textedit.wrapper.sh"
  binary shimscript, target: 'textedit'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '/System/Applications/TextEdit.app/Contents/MacOS/TextEdit' "$@"
    EOS
  end
end
