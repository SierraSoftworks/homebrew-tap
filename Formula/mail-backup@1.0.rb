class MailBackupAT10 < Formula
  desc "Backup your Fastmail/JMAP email account to a local Git repository"
  homepage "https://mail-backup.sierrasoftworks.com/"
  version "1.0.9"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.9/mail-backup-darwin-arm64"
      sha256 "2f4345b6a41f1268f36c0cb62856c8b8bfe65fe7d77c2ebaa80337c119e4ff77"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.9/mail-backup-darwin-amd64"
      sha256 "0c6ca498a2b6084b2a48e3b06861ec98c2b2046888ff4cc9bab6002d44c2cfad"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.9/mail-backup-linux-arm64"
      sha256 "1f89ed64a2a60496e693afe977df1ae0bf977fe75e2886ec78cd0f31d136137b"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.9/mail-backup-linux-amd64"
      sha256 "141c64f439a2dd5b2f3810a2c3fea2da3c5359f5f08c2955e6ae632c9114c0c3"
    end
  end

  def install
    bin.install Dir["*"][0] => "mail-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mail-backup --version 2>&1 || true")
  end
end
