cask "z-test" do
  version "3.20.2"
  sha256 :no_check

  url "https://github.com/zenangst/KeyboardCowboy/releases/download/#{version}/Keyboard.Cowboy.#{version}.dmg"
  name "Test"
  homepage "http://www.paperstreetsoap.company/"

  app "Test.app"
end
