cask "m-whatcable" do
  version "1.1.0"

  url "https://github.com/darrylmorley/whatcable/releases/download/v#{version}/WhatCable.zip"

  app "WhatCable.app"
  binary "#{appdir}/WhatCable.app/Contents/Helpers/whatcable"
end
