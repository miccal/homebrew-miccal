cask "m-suspicious-package" do
  version "4.6,1311"

  url "https://www.mothersruin.com/software/downloads/SuspiciousPackage.dmg"

  livecheck do
    cask "suspicious-package"
  end

  app "Suspicious Package.app"
end
