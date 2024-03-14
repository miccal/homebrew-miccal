cask "m-mactex-no-gui" do
  version "2024.0312"
  sha256 :no_check

  url "http://mirror.aarnet.edu.au/pub/CTAN/systems/mac/mactex/mactex-#{version.no_dots}.pkg"
  name "MacTeX"
  homepage "https://www.tug.org/mactex/"

  livecheck do
    url "http://mirror.aarnet.edu.au/pub/CTAN/systems/mac/mactex/"
    strategy :page_match do |page|
      match = page.match(/href=.*?mactex[._-](\d{4})(\d{4})\.pkg/)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on formula: "ghostscript"

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
