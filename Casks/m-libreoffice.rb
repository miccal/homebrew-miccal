cask "m-libreoffice" do
  version "26.2.0.3"

  # Stable:
  #url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/aarch64/LibreOffice_#{version}_MacOS_aarch64.dmg"
  # RC:
  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/aarch64/LibreOffice_#{version}_MacOS_aarch64.dmg"
  # Dev:
  #url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/aarch64/LibreOfficeDev_#{version}_MacOS_aarch64.dmg"

  livecheck do
    url "https://download.documentfoundation.org/libreoffice/testing/"
    regex(/LibreOffice(?:Dev)?[._-]v?(.+?)[._-]MacOS[._-]aarch64\.dmg/i)
    strategy :page_match do |page, regex|
      versions = page.scan(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
                     .flatten
                     .uniq
                     .map { |v| Version.new(v) }
                     .sort
      next if versions.blank?

      page = Homebrew::Livecheck::Strategy.page_content(
        URI.join(@url, "#{versions.last}/mac/aarch64/").to_s,
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
