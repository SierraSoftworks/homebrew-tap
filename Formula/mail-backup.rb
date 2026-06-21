class MailBackup < Formula
  desc "Backup your Fastmail/JMAP email account to a local Git repository"
  homepage "https://mail-backup.sierrasoftworks.com/"
  version "1.0.8"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.8/mail-backup-darwin-arm64"
      sha256 "c9613a9ac35813be94905de41d060ee7b7478c2abff308e7a0d46ed45f4d8675"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.8/mail-backup-darwin-amd64"
      sha256 "00314ffc63c5cb1349280efa5cf72aaae83caf15cde95d03f6d839955705436d"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.8/mail-backup-linux-arm64"
      sha256 "4a9a1b41ed8bc04df013c141a318abbddbfde1c90785cea2c297c373d2add27d"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.8/mail-backup-linux-amd64"
      sha256 "b19dc704be11d9c2c910d67c826349428c388d2242cbaebbcafba98c94a22430"
    end
  end

  def install
    bin.install Dir["*"][0] => "mail-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mail-backup --version 2>&1 || true")
  end
end
