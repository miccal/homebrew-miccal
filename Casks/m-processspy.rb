cask "m-processspy" do
  version "1.11.2"

  url "https://process-spy.app/archive/ProcessSpy_#{version}.dmg"

  livecheck do
    cask "processspy"
  end

  app "ProcessSpy.app"
end
