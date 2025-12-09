cask "claudecode-cola" do
  version "1.0.3"
  sha256 "1e85d33506c05be44416e3d88e2b524afdb2b5968ae6052952c1661712ab2e48"

  url "https://github.com/HayaKus/ClaudeCode-Cola/releases/download/v#{version}/ClaudeCode-Cola-#{version}.dmg"
  name "ClaudeCode-Cola"
  desc "Monitor Claude Code sessions and TodoWrite tasks"
  homepage "https://github.com/HayaKus/ClaudeCode-Cola"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ClaudeCode-Cola.app"

  zap trash: [
    "~/.claudecode-cola",
  ]
end
