cask "m-pearcleaner" do
  version "3.9.1"
  sha256 :no_check

  url "https://github.com/alienator88/Pearcleaner/releases/download/#{version}/Pearcleaner.zip"

  livecheck do
    url :url
    strategy :github_releases do |json|
      json.map do |release|
        next if release["draft"]

        release["tag_name"]
      end
    end
  end

  app "Pearcleaner.app"

#  postflight do
#    system_command "/usr/bin/xattr",
#                   args: ["-d", "-r", "com.apple.quarantine", "#{appdir}/Pearcleaner.app"],
#                   sudo: true
#  end

  caveats <<~EOS
    The postflight block removes the extended attribute "com.apple.quarantine" of #{token}.
  EOS
end
