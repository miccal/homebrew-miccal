cask "m-zoom" do
  arch arm: "arm64/"

  version "6.1.1.36333"
  sha256 :no_check

  url "https://cdn.zoom.us/prod/#{version}/#{arch}zoomusInstallerFull.pkg"

  livecheck do
    cask "zoom"
  end

  pkg "zoomusInstallerFull.pkg"

  postflight do
    retries ||= 3
    ohai "The install package launches Zoom" if retries >= 3
    ohai "Attempting to close Zoom" if retries >= 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/zoom.us.app"]
  rescue RuntimeError
    sleep 1
    retry unless (retries -= 1).zero?
    opoo "Unable to close Zoom"
  end
end
