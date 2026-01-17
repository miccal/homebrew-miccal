cask "m-z-library" do
  version "2.1.2"

  url "https://s3proxy.cdn-zlib.sk/te_public_files/soft/macos/zlibrary-setup-latest.dmg"

  livecheck do
    #url :url
    #strategy :extract_plist
    #url "https://library-access.sk"
    #regex(%r{macos(?:.+\n+)+\s+version\s+<b>(\d+(?:\.\d+)+)</b>}i)
    #url "https://en.z-library.sk/z-access#desktop_app_tab"
    url "https://en.z-library.sk/z-access#desktop_app_tab",
        user_agent: :fake
    regex(%r{macos(?:.+\n+)+\s+version\s+<b>(\d+(?:\.\d+)+)</b>}i)
    #skip "Check https://en.z-library.sk/z-access#desktop_app_tab"
  end

  app "Z-Library.app"
end
