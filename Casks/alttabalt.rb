cask "alttabalt" do
  version "1.0.11"
  sha256 "f4a7343579ffcd36968626d2b1d8d04ed76fd7c6485a6db195c65eadda0496ef"

  url "https://github.com/ut0s/homebrew-alttabalt/releases/download/v1.0.11/AltTabAlt-v1.0.11.zip",
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
