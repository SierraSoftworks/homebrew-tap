class MailBackup < Formula
  desc "Backup your Fastmail/JMAP email account to a local Git repository"
  homepage "https://mail-backup.sierrasoftworks.com/"
  version "1.0.11"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.11/mail-backup-darwin-arm64"
      sha256 "da770d10ca27593ac1c368eb201c004332bfa311aafd4dc1c99d3ba9ad9bc939"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.11/mail-backup-darwin-amd64"
      sha256 "4670379028282dc71cc3b727b9648de128c753eddb948a4ac7f892c34b60832f"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.11/mail-backup-linux-arm64"
      sha256 "796b5a680111c6677cf433ac2ffc8b3b270c06b150b981766a71f1df6fa58df2"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.11/mail-backup-linux-amd64"
      sha256 "1ec92ee76720aa6686ab85fe636034e29829a40622b3ba9df5a12cb372905494"
    end
  end

  def install
    bin.install Dir["*"][0] => "mail-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mail-backup --version 2>&1 || true")
  end
end
