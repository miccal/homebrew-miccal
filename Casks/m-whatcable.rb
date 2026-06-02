cask "m-whatcable" do
  version "0.19.2"

  url "https://github.com/darrylmorley/whatcable/releases/download/v#{version}/WhatCable.zip"

  app "WhatCable.app"
  binary "#{appdir}/WhatCable.app/Contents/Helpers/whatcable"
end
