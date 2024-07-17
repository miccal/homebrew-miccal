cask "m-devtoys" do
  arch arm: "arm64", intel: "x64"

  version "2.0.4.0"
  sha256 :no_check

  url "https://github.com/DevToys-app/DevToys/releases/download/v#{version}/devtoys_osx_#{arch}.zip"

  app "DevToys.app"
end
