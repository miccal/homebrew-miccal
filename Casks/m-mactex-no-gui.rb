cask "m-mactex-no-gui" do
  version "2024.0312"
  sha256 :no_check

  url "http://mirror.aarnet.edu.au/pub/CTAN/systems/mac/mactex/mactex-#{version.no_dots}.pkg",
      verified: "mirror.aarnet.edu.au/pub/CTAN/systems/mac/mactex/"
  name "MacTeX"
  desc "Full TeX Live distribution without GUI applications"
  homepage "https://www.tug.org/mactex/"

  livecheck do
    cask "mactex"
  end

  depends_on formula: "ghostscript"
  depends_on macos: ">= :mojave"

  pkg "mactex-#{version.no_dots}.pkg",
      # installer -showChoicesXML -pkg filename.pkg -target /
      choices: [
        {
          # Ghostscript
          "choiceIdentifier" => "org.tug.mactex.ghostscript10.03.0",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # Ghostscript Dynamic Library
          "choiceIdentifier" => "org.tug.mactex.ghostscript10.03.0-libgs",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # Ghostscript Mutool
          "choiceIdentifier" => "org.tug.mactex.ghostscript10.03.0-mutool",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # GUI Applications
          "choiceIdentifier" => "org.tug.mactex.gui#{version.major}",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # TeX Live
          "choiceIdentifier" => "org.tug.mactex.texlive#{version.major}",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: "org.tug.mactex.texlive#{version.major}",
            delete:  "/usr/local/texlive/#{version.major}"
end
