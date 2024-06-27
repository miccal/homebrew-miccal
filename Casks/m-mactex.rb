cask "m-mactex" do
  version "2024,0312,10.03.0"
  sha256 :no_check

  url "http://mirror.aarnet.edu.au/pub/CTAN/systems/mac/mactex/mactex-#{version.csv.first}#{version.csv.second}.pkg"

  livecheck do
    url "http://dante.ctan.org/tex-archive/systems/mac/mactex/"
    strategy :page_match do |page|
      year = page[/mactex[._-]v?(\d{4})\d{4}\.pkg/i, 1]
      next if year.blank?

      date = page[/mactex[._-]v?\d{4}(\d{4})\.pkg/i, 1]
      next if date.blank?

      gs = page[/mactex[._-]ghostscript[._-]v?(\d+(?:\.\d+)+)[._-]\d{8}\.pkg/i, 1]
      next if gs.blank?

      "#{year},#{date},#{gs}"
    end
  end

  depends_on formula: "ghostscript"

  pkg "mactex-#{version.csv.first}#{version.csv.second}.pkg",
      # installer -showChoicesXML -pkg filename.pkg -target /
      choices: [
        {
          # Ghostscript
          "choiceIdentifier" => "org.tug.mactex.ghostscript#{version.csv.third}",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # Ghostscript Dynamic Library
          "choiceIdentifier" => "org.tug.mactex.ghostscript#{version.csv.third}-libgs",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # Ghostscript Mutool
          "choiceIdentifier" => "org.tug.mactex.ghostscript#{version.csv.third}-mutool",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # GUI Applications
          "choiceIdentifier" => "org.tug.mactex.gui#{version.csv.first}",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # TeX Live
          "choiceIdentifier" => "org.tug.mactex.texlive#{version.csv.first}",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: "org.tug.mactex.texlive#{version.csv.first}",
            delete:  "/usr/local/texlive/#{version.csv.first}"
end
