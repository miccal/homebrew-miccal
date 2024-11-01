cask "m-wolfram-engine" do
  version "14.1.0.0"
  sha256 :no_check

  url "https://files.wolframcdn.com/packages/Homebrew/#{version}/WolframEngine_#{version.major_minor_patch}_MAC.dmg"

  livecheck do
    cask "wolfram-engine"
  end

  app "Wolfram Engine.app"
  pkg "WolframScript.pkg"

  postflight do
    system_command "/bin/rm",
                   args: ["-r", "#{Dir.home}/Library/Jupyter/kernels/wolframlanguage14.1"],
                   sudo: true
                   must_succeed: false
  end

  caveats <<~EOS
    The Wolfram Language can be added as a JupyterLab kernel by running the command
      git clone https://github.com/WolframResearch/WolframLanguageForJupyter.git
    in a suitable directory, then running the command
      cd WolframLanguageForJupyter ; wolframscript -code configure-jupyter.wls add
    The postflight block removes the JupyterLab kernel for the previous version of the Wolfram Language.
    To check the current list of JupyterLab kernels, run the command
      jupyter kernelspec list
  EOS
end
