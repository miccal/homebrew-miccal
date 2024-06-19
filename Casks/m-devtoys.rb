cask "m-devtoys" do
  arch arm: "arm64", intel: "x64"

  version "2.0.2.0"
  sha256 arm:   "f2dc1e17356fbc0de2b3a9c28c0ce3acd4fd6d03730ad762a8ef0f9af8882da8",
         intel: "a42316ced458994328170c906182d869b7a4b1fc12f7a0f5a843fbd99620dc05"

  url "https://github.com/DevToys-app/DevToys/releases/download/v#{version}/devtoys_osx_#{arch}.zip"
  name "DevToys"
  homepage "https://github.com/DevToys-app/DevToys"

  app "DevToys.app"
end
