cask "m-sagemath" do
  version "10.9,10.9.1"

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

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "com.apple.quarantine", "#{staged_path}/SageMath-#{version.csv.first.dots_to_hyphens}.app"],
                   sudo:         false,
                   must_succeed: false,
                   print_stderr: false
  end

  caveats <<~EOS
    Remove the JupyterLab kernel for the previous version of #{token} using sudo rm -r.
    Check the current list of JupyterLab kernels by running the command
      jupyter kernelspec list
  EOS
end
