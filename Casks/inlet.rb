cask "inlet" do
  version "0.1.2"
  sha256 "933f84097e8088e712bf4410ced996fff0dfa4a697aa5b46b8fea0f469416350"

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
