cask "m-wolfram-engine" do
  version "14.2.1.0"
  sha256 :no_check

  url "https://files.wolframcdn.com/packages/Homebrew/#{version}/WolframEngine_#{version.major_minor_patch}_MAC.dmg"

  livecheck do
    cask "wolfram-engine"
  end

  app "Wolfram Engine.app"
  pkg "WolframScript.pkg"

  caveats <<~EOS
    The Wolfram Language can be added as a JupyterLab kernel by running the command
      git clone https://github.com/WolframResearch/WolframLanguageForJupyter.git
    in a suitable directory, then running the command
      cd WolframLanguageForJupyter ; wolframscript -code configure-jupyter.wls add
    Remove the JupyterLab kernel for the previous version of #{token} using sudo rm -r.
    Check the current list of JupyterLab kernels by running the command
      jupyter kernelspec list
  EOS
end
