class MailBackupAT1 < Formula
  desc "Backup your Fastmail/JMAP email account to a local Git repository"
  homepage "https://mail-backup.sierrasoftworks.com/"
  version "1.0.14"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.14/mail-backup-darwin-arm64"
      sha256 "f9a6ebd178d2fc4b8f2236bd4ea29ebedf867988098c818aee572ca7b5b4150e"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.14/mail-backup-darwin-amd64"
      sha256 "0af70458103e5fd02ac9688d768fc629acaed7eb798a274eed3ac627668ae45e"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.14/mail-backup-linux-arm64"
      sha256 "9d4d0ae84a8d2b227e09438cc166c391db6d6cba2ab0c3c9ae550790eea55432"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.14/mail-backup-linux-amd64"
      sha256 "1ac4a13d01b04d5653f877ac729eee3830d936ed31cd2947e6ce052f22410ff1"
    end
  end

  def install
    bin.install Dir["*"][0] => "mail-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mail-backup --version 2>&1 || true")
  end
end
