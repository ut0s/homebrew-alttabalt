cask "alttabalt" do
  version "1.0.13"
  sha256 "2e4e35764d1e8fb5332db4c40004744ee7822931568871b4f18d1ad2c88ff6de"

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
