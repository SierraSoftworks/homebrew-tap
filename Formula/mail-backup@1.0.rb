class MailBackupAT10 < Formula
  desc "Backup your Fastmail/JMAP email account to a local Git repository"
  homepage "https://mail-backup.sierrasoftworks.com/"
  version "1.0.12"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.12/mail-backup-darwin-arm64"
      sha256 "907aad4aa0458e8e016307a8d3184313d2d70b22e6c742108327dfa22f5d3c20"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.12/mail-backup-darwin-amd64"
      sha256 "2c1c2bde5ffee275c898f3b1eddb92a1cef433a74f98553089d189c1c28e7a7d"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.12/mail-backup-linux-arm64"
      sha256 "27ca407584338bdfc69a9458dc98ecff7957e31ddf8c0c504e2556b2394daa60"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.12/mail-backup-linux-amd64"
      sha256 "ffe46fbdd883697ae642d15d5052c99f53bd4e8875a74af30f431456b10831c2"
    end
  end

  def install
    bin.install Dir["*"][0] => "mail-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mail-backup --version 2>&1 || true")
  end
end
