cask "m-tor-browser" do
  version "16.0a11"

  url "https://dist.torproject.org/torbrowser/#{version}/tor-browser-macos-#{version}.dmg"

  livecheck do
    url "https://dist.torproject.org/torbrowser/?C=M;O=D"
    regex(%r{href=["']?v?(\d+(?:.\d+)+)/?["' >]}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1]
    end
  end

  # Stable:
  #app "Tor Browser.app"
  # Alpha:
  app "Tor Browser Alpha.app", target: "Tor Browser.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "{{staged_path}}/Tor Browser.app"],
        sudo:         false,
        must_succeed: false,
        print_stderr: false
  end
end
