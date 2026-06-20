class MailBackupAT10 < Formula
  desc "Backup your Fastmail/JMAP email account to a local Git repository"
  homepage "https://mail-backup.sierrasoftworks.com/"
  version "1.0.7"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.7/mail-backup-darwin-arm64"
      sha256 "0c44a7aeb17859e60439b5395aa21ef99271cb7d00d4d2d636aaafa8e284393a"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.7/mail-backup-darwin-amd64"
      sha256 "cc13396c23a90b0411c472d86669dfb94492c0e8d8d7c46456696e9853df50ef"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.7/mail-backup-linux-arm64"
      sha256 "3bd25a54b7b1c846d1d2b1f38e7c3c7e9d4346561f94a220b0f9592ef53b93ef"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.7/mail-backup-linux-amd64"
      sha256 "bfa60418725f7fa1c9766f55bc3929332f6314e0148836ef00cdfc120e5adf54"
    end
  end

  def install
    bin.install Dir["*"][0] => "mail-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mail-backup --version 2>&1 || true")
  end
end
