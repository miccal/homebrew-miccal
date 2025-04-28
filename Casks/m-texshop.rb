cask "m-texshop" do
  version "5.52"
  sha256 :no_check

  url "https://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"

  livecheck do
    cask "texshop"
  end

  app "TeXShop.app"
end
