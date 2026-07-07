class MailBackupAT1 < Formula
  desc "Backup your Fastmail/JMAP email account to a local Git repository"
  homepage "https://mail-backup.sierrasoftworks.com/"
  version "1.0.13"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.13/mail-backup-darwin-arm64"
      sha256 "b413259b89ed59edec8550f6d8d5ea570946ee873141fb0dde69b8e6b540ce30"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.13/mail-backup-darwin-amd64"
      sha256 "27f61e6103f7acd050cb76541cf45030d945c74b9d0079ea381aebaa6be8cb2f"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.13/mail-backup-linux-arm64"
      sha256 "c3f63c804eda80636e16842a147f04045351ee56eb62c0627460019a28f2a1aa"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.13/mail-backup-linux-amd64"
      sha256 "2368ea917210c9e986eb753ecb0313666cd4dbeab42b1380c619cdf7bfdfe6ca"
    end
  end

  def install
    bin.install Dir["*"][0] => "mail-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mail-backup --version 2>&1 || true")
  end
end
