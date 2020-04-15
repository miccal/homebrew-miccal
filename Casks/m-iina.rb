cask 'm-iina' do
  version '1.0.7-beta2'
  sha256 :no_check

  url "https://dl.iina.io/IINA.v#{version}.dmg"
  name 'IINA'
  homepage 'https://iina.io/'

  app 'IINA.app'
  binary "#{appdir}/IINA.app/Contents/MacOS/iina-cli", target: 'iina'
end
