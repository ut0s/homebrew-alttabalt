cask "alttabalt" do
  version "1.0.12"
  sha256 "2d2981301030e24a6bfb1264d12aa872c39160ee4d4f06599d6c7cd4e38e73fd"

  url "https://github.com/ut0s/homebrew-alttabalt/releases/download/v#{version}/AltTabAlt-v#{version}.zip"
  name "AltTabAlt"
  desc "Window switcher with Alt-Tab behavior"
  homepage "https://github.com/ut0s/homebrew-alttabalt"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "AltTabAlt.app"

  zap trash: [
    "~/Library/Preferences/com.alttabalt.app.plist",
  ]

  caveats do
    unsigned_accessibility
  end
end
