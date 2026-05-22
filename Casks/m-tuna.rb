cask "m-tuna" do
  version "0.72,1405"

  url "https://tunaformac.com/download/releases/#{version.csv.second}"

  livecheck do
    #url "https://tunaformac.com/appcast.xml"
    #strategy :sparkle, &:short_version
    url "https://tunaformac.com/download/latest"
    regex(/tuna[._-]v?(\d+(?:\.\d+)+)[._-]v?(\d+)\.zip/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Tuna.app"
end
