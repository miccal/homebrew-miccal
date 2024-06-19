cask "m-sage" do
  arch arm: "arm64", intel: "x86_64"

  version "10.3,2.3.2"
  sha256 :no_check

  url "https://github.com/3-manifolds/Sage_macOS/releases/download/v#{version.csv.second}/SageMath-#{version.csv.first}_#{arch}.dmg"
  name "Sage"
  homepage "https://www.sagemath.org/"

  livecheck do
    cask "sage"
  end

  app "SageMath-#{version.csv.first.dots_to_hyphens}.app"
  pkg "Recommended_#{version.csv.first.dots_to_underscores}.pkg"
end
