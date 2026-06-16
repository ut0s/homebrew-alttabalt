cask "alttabalt" do
  version "1.0.8"
  sha256 "9b06f8e5cbdb3b2c677c1e270539a33e67ad8fb64b8cc9afb8d3e4d880f3abe3"

  url "https://github.com/ut0s/homebrew-alttabalt/releases/download/v1.0.8/AltTabAlt-v1.0.8.zip",
      verified: "github.com/ut0s/homebrew-alttabalt/"
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
