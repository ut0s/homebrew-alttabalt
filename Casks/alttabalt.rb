cask "alttabalt" do
  version "1.0.0"
  sha256 "65877f4dccd4a533d85eced02251f2b248abc1df527812e002cf1c73adeb2d62"

  url "https://github.com/ut0s/homebrew-alttabalt/releases/download/v1.0.0/AltTabAlt-v1.0.0.zip",
      verified: "github.com/ut0s/homebrew-alttabalt/"
  name "AltTabAlt"
  desc "Window switcher with Alt-Tab behavior"
  homepage "https://github.com/ut0s/homebrew-alttabalt"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "AltTabAlt.app"

  zap trash: [
    "~/Library/Preferences/com.alttabalt.app.plist",
  ]

  caveats do
    unsigned_accessibility
  end
end
