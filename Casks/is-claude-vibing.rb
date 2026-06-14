cask "is-claude-vibing" do
  version "1.0.0"
  sha256 "0688df55576679597f26d72f3464a11957be46aefa32255c7f762a341d9df5e4"

  url "https://github.com/ml-dalos/is_claude_vibing/releases/download/v#{version}/IsClaudeVibing.zip"
  name "Is Claude Vibing"
  desc "Menu bar widget showing remaining Claude Code subscription limits"
  homepage "https://github.com/ml-dalos/is_claude_vibing"

  app "IsClaudeVibing.app"

  caveats <<~CAVEATS
    This build is ad-hoc signed (not notarized). Install with:
      brew install --cask --no-quarantine ml-dalos/tap/is-claude-vibing
    On first run, macOS asks permission to read the Claude Code Keychain item —
    click "Always Allow".
  CAVEATS
end
