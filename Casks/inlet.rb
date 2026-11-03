cask "inlet" do
  version "0.1.4"
  sha256 "d1f9a7aab586661c025161b031e3158c72711143a3e0a60c81f34f84c8737726"

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
