class MailBackupAT1 < Formula
  desc "Backup your Fastmail/JMAP email account to a local Git repository"
  homepage "https://mail-backup.sierrasoftworks.com/"
  version "1.0.16"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.16/mail-backup-darwin-arm64"
      sha256 "188ba254afb964cfa02ba426832800192c373b8e88f058511a6331fe00ec6474"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.16/mail-backup-darwin-amd64"
      sha256 "976e9c462267b7ec8db401eb3ec5187c3f310ffd5382850013233dd4de855c45"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.16/mail-backup-linux-arm64"
      sha256 "6e3ec473c17fef03848211b7d9f173a26dd30c961e0b97454462e92effc83193"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.16/mail-backup-linux-amd64"
      sha256 "57682a587a6816500be4dd16229002f8c37e62f36597a755cc259d88a98c7778"
    end
  end

  def install
    bin.install Dir["*"][0] => "mail-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mail-backup --version 2>&1 || true")
  end
end
