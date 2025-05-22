cask "m-z-library" do
  version "2.1.2"
  sha256 :no_check

  url "https://s3proxy.cdn-zlib.sk/te_public_files/soft/macos/zlibrary-setup-latest.dmg"

  livecheck do
    #url :url
    #strategy :extract_plist
    url "https://go-to-library.sk"
    regex(%r{macos(?:.+\n+)+.+version\s<b>(\d+(?:\.\d+)+)</b>}i)
  end

  app "Z-Library.app"
end
