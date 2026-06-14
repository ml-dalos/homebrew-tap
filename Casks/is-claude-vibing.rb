cask "is-claude-vibing" do
  version "1.0.2"
  sha256 "01138b1c7e7b7f13d01fa6dd0c6d930860299af6efacc4380079115f97bd84af"

  url "https://github.com/ml-dalos/is_claude_vibing/releases/download/v#{version}/IsClaudeVibing.zip"
  name "Is Claude Vibing"
  desc "Menu bar widget showing remaining Claude Code subscription limits"
  homepage "https://github.com/ml-dalos/is_claude_vibing"

  app "IsClaudeVibing.app"

  caveats <<~CAVEATS
    This build is ad-hoc signed (not notarized). If macOS blocks it, remove the
    download-quarantine attribute so it opens:
      xattr -dr com.apple.quarantine "#{appdir}/IsClaudeVibing.app"
    On first run, macOS asks permission to read the Claude Code Keychain item —
    click "Always Allow".
  CAVEATS
end
