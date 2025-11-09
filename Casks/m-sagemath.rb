cask "m-sagemath" do
  version "10.7,2.7.0"

  url "https://github.com/3-manifolds/Sage_macOS/releases/download/v#{version.csv.second}/SageMath-#{version.csv.first}_arm64.dmg"

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

  caveats <<~EOS
    Remove the JupyterLab kernel for the previous version of #{token} using sudo rm -r.
    Check the current list of JupyterLab kernels by running the command
      jupyter kernelspec list
  EOS
end
