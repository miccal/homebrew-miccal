cask "m-obs" do
  arch arm: "Apple", intel: "Intel"

  version "30.2.2"
  sha256 :no_check

  url "https://github.com/obsproject/obs-studio/releases/download/#{version}/OBS-Studio-#{version}-macOS-#{arch}.dmg"

  livecheck do
    url :url
    strategy :github_releases do |json|
      json.map do |release|
        next if release["draft"]

        release["tag_name"]
      end
    end
  end

  app "OBS.app"

  caveats <<~EOS
    #{token} should be uninstalled manually by trashing the OBS.app
    bundle and rebooting macOS to ensure that the system extension
      com.obsproject.obs-studio.mac-camera-extension
    is uninstalled correctly.
    To reinstall, run the command
      brew install --force #{token}
    To check the state of the system extension, run the command
      systemextensionsctl list
  EOS
end
