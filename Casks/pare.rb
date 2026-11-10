cask "pare" do
  version "1.0.0-rc.2"
  sha256 "16fd4211665ee89ab08f9b14736a13f7011d6a27181781e58ee769a155288645"

  url "https://github.com/yudgnahk/pare/releases/download/v#{version}/Pare-#{version}-adhoc.dmg"
  name "Pare"
  desc "Safety-first disk cleanup for developers"
  homepage "https://github.com/yudgnahk/pare"

  depends_on macos: ">= :ventura"

  app "Pare.app"

  zap trash: [
    "~/Library/Application Support/Pare",
    "~/Library/Caches/com.yudgnahk.pare",
    "~/Library/Preferences/com.yudgnahk.pare.plist",
  ]

  caveats <<~EOS
    Pare is ad-hoc signed and not notarized yet, so macOS blocks the first launch.
    Open Pare once, then go to System Settings > Privacy & Security and click "Open Anyway".
    Grant Full Disk Access when Pare asks.
  EOS
end
