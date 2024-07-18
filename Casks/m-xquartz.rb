cask "m-xquartz" do
  version "2.8.5"
  sha256 :no_check

  url "https://github.com/XQuartz/XQuartz/releases/download/XQuartz-#{version}/XQuartz-#{version}.pkg"

  livecheck do
    cask "xquartz"
  end

  pkg "XQuartz-#{version}.pkg"
end
