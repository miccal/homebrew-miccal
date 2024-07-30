cask "m-libreoffice" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.8.0.2"
  sha256 :no_check

  # Stable:
  #url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}.dmg"
  # RC:
  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}.dmg"
  # Dev:
  #url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/#{folder}/LibreOfficeDev_#{version}_MacOS_#{arch}.dmg"

  livecheck do
    url "https://download.documentfoundation.org/libreoffice/testing/"
    regex(/LibreOffice(?:Dev)?[._-]v?(.+?)[._-]MacOS[._-]#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      versions = page.scan(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
                     .flatten
                     .uniq
                     .map { |v| Version.new(v) }
                     .sort
      next if versions.blank?

      page = Homebrew::Livecheck::Strategy.page_content(
        URI.join(@url, "#{versions.last}/mac/#{folder}/").to_s,
      )
      next if page[:content].blank?

      page[:content].scan(regex).flatten
    end
  end

  # Stable, RC:
  app "LibreOffice.app"
  # Dev:
  #app "LibreOfficeDev.app", target: "LibreOffice.app"
end
