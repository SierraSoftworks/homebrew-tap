class MailBackup < Formula
  desc "Backup your Fastmail/JMAP email account to a local Git repository"
  homepage "https://mail-backup.sierrasoftworks.com/"
  version "1.0.10"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.10/mail-backup-darwin-arm64"
      sha256 "ffbda2f41625ec32339e4dce7a1f65e3566eb62fe6e80975fb45dbd43d2753b6"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.10/mail-backup-darwin-amd64"
      sha256 "a546e08f7446839adf9de55cbb9d521a6910abbe9715432fd80d0812f8b032d3"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.10/mail-backup-linux-arm64"
      sha256 "25b6c47135adeb926f7b88a115d84af7564f4fb3ebec39c2425edafd54e13189"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/mail-backup/releases/download/v1.0.10/mail-backup-linux-amd64"
      sha256 "43f551218ae2a7583905075124ffa2319452c54932379ebd808908651a774abb"
    end
  end

  def install
    bin.install Dir["*"][0] => "mail-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mail-backup --version 2>&1 || true")
  end
end
