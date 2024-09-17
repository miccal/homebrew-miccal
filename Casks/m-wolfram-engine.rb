cask "m-wolfram-engine" do
  version "14.1.0.0"
  sha256 :no_check

  url "https://files.wolframcdn.com/packages/Homebrew/#{version}/WolframEngine_#{version.major_minor_patch}_MAC.dmg"

  livecheck do
    cask "wolfram-engine"
  end

  app "Wolfram Engine.app"
  binary "/Applications/Wolfram Engine.app/Contents/Resources/Wolfram Player.app/Contents/MacOS/wolframscript"

  postflight do
    system_command "/bin/rm",
                   args: ["-r", "#{Dir.home}/Library/Jupyter/kernels/wolframlanguage14.1"],
                   sudo: true
  end

  caveats <<~EOS
    If the binary "wolframscript" outputs "A WolframKernel location could not be determined.", run the command
      export WolframKernel=/Applications/Wolfram\ Engine.app/Contents/Resources/Wolfram\ Player.app/Contents/MacOS/WolframKernel
    #{token} can be added as a JupyterLab kernel by running the command
      git clone https://github.com/WolframResearch/WolframLanguageForJupyter.git
    in a suitable directory, then running the command
      cd WolframLanguageForJupyter ; wolframscript -code configure-jupyter.wls add
    The postflight block removes the JupyterLab kernel for the previous version of #{token}.
    To check the current list of JupyterLab kernels, run the command
      jupyter kernelspec list
  EOS
end
