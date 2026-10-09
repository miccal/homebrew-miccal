cask "m-dropbox" do
  version "275.3.3537"

  url "https://www.dropbox.com/download?build=#{version}&plat=mac&rtoken=&type=full&arch=arm64"

  livecheck do
    url "https://community.dropbox.com/en/categories/dropbox-desktop-client-builds"
    regex(/Beta\sBuild\s(\d+(?:\.\d+)+)/i)
  end

  app "Dropbox.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "{{staged_path}}/Dropbox.app"],
        sudo:         true,
        must_succeed: false,
        print_stderr: false
  end
end
