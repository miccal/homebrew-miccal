cask "m-low-profile" do
  version "5.0.0"

  url "https://github.com/ninxsoft/LowProfile/releases/download/v#{version}/Low.Profile.#{version}.dmg"

  livecheck do
    cask "leader-key"
  end

  app "Low Profile.app"
end
