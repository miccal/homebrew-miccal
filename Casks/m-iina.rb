cask "m-iina" do
  version "1.0.7test1"
  sha256 :no_check

  # testtesttest
  url "https://dl.iina.io/IINA.v#{version}.dmg"
  name "IINA"
  homepage "https://iina.io/"

  app "IINA.app"
  shimscript = "#{staged_path}/iina-cli.wrapper.sh"
  binary shimscript, target: "iina"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      "#{appdir}/IINA.app/Contents/MacOS/iina-cli" "$@"
    EOS
  end
end
