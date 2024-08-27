cask "m-sagemath" do
  arch arm: "arm64", intel: "x86_64"

  version "10.4,2.4.0"
  sha256 :no_check

  url "https://github.com/3-manifolds/Sage_macOS/releases/download/v#{version.csv.second}/SageMath-#{version.csv.first}_#{arch}.dmg"

  livecheck do
    cask "sage"
  end

  app "SageMath-#{version.csv.first.dots_to_hyphens}.app"
  pkg "Recommended_#{version.csv.first.dots_to_underscores}.pkg"

  uninstall pkgutil: [
              "org.computop.SageMath.#{version.csv.first.dots_to_underscores}.bin",
              "org.computop.SageMath.#{version.csv.first.dots_to_underscores}.share",
              "org.computop.SageMath.#{version.csv.first.dots_to_underscores}.texlive",
            ]

  postflight do
    system_command "/bin/rm",
                   args: ["-r", "/usr/local/share/jupyter/kernels/SageMath-#{version.csv.first.dots_to_underscores}"],
                   sudo: true
  end
end
