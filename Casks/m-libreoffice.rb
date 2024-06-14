cask "m-libreoffice" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.8.0.0.beta1"
  sha256 :no_check

  # Stable:
  #url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}.dmg"
  # RC:
  #url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}.dmg"
  # Dev:
  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/#{folder}/LibreOfficeDev_#{version}_MacOS_#{arch}.dmg"
  name "LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    url "https://download.documentfoundation.org/libreoffice/testing/"
    regex(/(\d+(?:\.\d+)+)\.beta1[._-]MacOS[._-]#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      # Match years from directories
      years = page.scan(%r{href=["']v?(\d+(?:\.\d+)+)/?["' >]}i)
                  .flatten
                  .uniq
                  .map { |v| Version.new(v) }
                  .sort
      next if years.blank?

      # Fetch the page for the newest year directory
      newest_year = years.last.to_s
      year_page = Homebrew::Livecheck::Strategy.page_content(URI.join(@url, newest_year, 'mac', 'aarch64').to_s)
      next if year_page[:content].blank?

      # Match version from source tarball filenames
      year_page[:content].scan(regex).flatten
    end
  end

  # Stable, RC:
  #app "LibreOffice.app"
  # Dev:
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
