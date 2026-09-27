class MailBackupAT1 < Formula
  desc "Backup your Fastmail/JMAP email account to a local Git repository"
  homepage "https://mail-backup.sierrasoftworks.com/"
  version "1.0.15"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.15/mail-backup-darwin-arm64"
      sha256 "77f70347c76da67d417ee9ddfc76bc00c17749e9d8ba7efe2e2d2a61a9aeb526"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.15/mail-backup-darwin-amd64"
      sha256 "e5cd0122a14006e57a97310c67b84633be3e5416763a383e34fd7f31f643b35a"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.15/mail-backup-linux-arm64"
      sha256 "7ad4a864c3431e05a3f7f6d6ca6a7e200bd6515cefe25079a2dec43005cbf735"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.15/mail-backup-linux-amd64"
      sha256 "8ecca8b7d9badeeeeda4e130422c7283a745f75250b9cd8391c37735dd984331"
    end
  end

  def install
    bin.install Dir["*"][0] => "mail-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mail-backup --version 2>&1 || true")
  end
end
