cask "m-processspy" do
  version "1.8.3"
  sha256 :no_check

  url "https://process-spy.app/archive/ProcessSpy_#{version}.zip"

  livecheck do
    cask "processspy"
  end

  app "ProcessSpy.app"
end
