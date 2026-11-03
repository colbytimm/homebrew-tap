cask "inlet" do
  version "0.1.3"
  sha256 "b72a7caaa908866c0badbd422f772cd77e728efd67d287b32a3fef677d146428"

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
