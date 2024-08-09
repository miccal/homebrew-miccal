cask "m-wolfram-engine" do
  version "14.1.0.0"
  sha256 :no_check

  url "https://files.wolframcdn.com/packages/Homebrew/#{version}/WolframEngine_#{version.major_minor_patch}_MAC.dmg"

  livecheck do
    url "https://www.wolfram.com/engine/"
    regex(/version=(\d+(?:\.\d+)+)&platform=Mac/i)
  end

  app "Wolfram Engine.app"
  binary "#{appdir}/Wolfram Engine.app/Contents/Resources/Wolfram Player.app/Contents/MacOS/wolframscript"
end
