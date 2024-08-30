cask "m-suspicious-package" do
  version "4.5,1213"
  sha256 :no_check

  url "https://www.mothersruin.com/software/downloads/SuspiciousPackage.dmg"

  livecheck do
    cask "suspicious-package"
  end

  app "Suspicious Package.app"
end
