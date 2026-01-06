cask "m-processspy" do
  version "1.10.2"

  url "https://process-spy.app/archive/ProcessSpy_#{version}.zip"

  livecheck do
    cask "processspy"
  end

  app "ProcessSpy.app"
end
