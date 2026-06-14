cask "is-claude-vibing" do
  version "1.0.1"
  sha256 "eb863ca605845e3514eed40e5f1b6bfb23bcbf1b2133c85753af524bf6053a90"

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
