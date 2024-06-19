cask "m-zoom" do
  arch arm: "arm64/"
  livecheck_folder = on_arch_conditional arm: "?archType=arm64"

  version "6.1.0.35886"
  sha256 :no_check

  url "https://cdn.zoom.us/prod/#{version}/#{arch}zoomusInstallerFull.pkg"
  name "Zoom"
  homepage "https://www.zoom.us/"

  livecheck do
    cssk "zoom"
  end

  pkg "zoomusInstallerFull.pkg"

  postflight do
    retries ||= 3
    ohai "The Zoom package launches Zoom" if retries >= 3
    ohai "Attempting to close Zoom" if retries >= 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/zoom.us.app"]
  rescue RuntimeError
    sleep 1
    retry unless (retries -= 1).zero?
    opoo "Unable to close Zoom"
  end
end
