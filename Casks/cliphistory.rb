cask "cliphistory" do
  version "1.3.4"
  sha256 "3387fd861fbfd66c57c52ab1eced5e105153338eabfc84947cc583cef549034c"

  url "https://github.com/weiykong/ClipHistory/releases/download/v#{version}/ClipHistory.dmg"
  name "ClipHistory"
  desc "Lightweight native macOS clipboard manager"
  homepage "https://weiykong.github.io/ClipHistory/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "ClipHistory.app"

  # Note: the app is ad-hoc signed (no Developer ID), so Gatekeeper will warn on
  # first launch. Homebrew's official tap cannot carry it for this reason; this tap
  # exists so `brew install --cask cliphistory` works without bypassing Gatekeeper.

  zap trash: [
    "~/Library/Application Support/ClipHistory",
    "~/Library/Preferences/com.weiyuankong.cliphistory.plist",
    "~/Library/Saved Application State/com.weiyuankong.cliphistory.savedState",
  ]
end
