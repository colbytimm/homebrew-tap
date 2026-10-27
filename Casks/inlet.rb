cask "inlet" do
  version "0.1.1"
  sha256 "d01b9f5aa4cf3dfc37f74075283cfa2ec7526dbb920e925979414ea613fb9f1c"

  url "https://github.com/colbytimm/inlet-releases/releases/download/v#{version}/Inlet-#{version}.zip"
  name "Inlet"
  desc "Arc-style web browser built on WebKit"
  homepage "https://github.com/colbytimm/inlet-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: :sequoia

  app "Inlet.app"

  zap trash: [
    "~/Library/Application Scripts/com.colbytimm.inletbrowser",
    "~/Library/Caches/com.colbytimm.inletbrowser",
    "~/Library/Containers/com.colbytimm.inletbrowser",
    "~/Library/Preferences/com.colbytimm.inletbrowser.plist",
    "~/Library/WebKit/com.colbytimm.inletbrowser",
  ]
end
