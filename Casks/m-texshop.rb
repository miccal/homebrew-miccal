cask "m-texshop" do
  version "5.36"
  sha256 :no_check

  url "https://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  name "TeXShop"
  homepage "https://pages.uoregon.edu/koch/texshop/"

  livecheck do
    cask "texshop"
  end

  app "TeXShop.app"
end
