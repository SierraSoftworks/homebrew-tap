class GithubBackupAT34 < Formula
  desc "Automatically backup your GitHub repositories"
  homepage "https://github-backup.sierrasoftworks.com/"
  version "3.4.8"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.8/github-backup-darwin-arm64"
      sha256 "17c9b71ff50ab97e02f331e7a85010bf566a91ab869b5ab2b46e30b5acd69226"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.8/github-backup-darwin-amd64"
      sha256 "ef0693960c98a0e2c1ea3cb3e683a789ce0ee2bbfcf08f72f4334febabf91307"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.8/github-backup-linux-arm64"
      sha256 "101e44d4480bd2f086ba05f6485aaa0810f2a02b377c953a8421f9ab0331d483"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.8/github-backup-linux-amd64"
      sha256 "b21ce03a6c1a333588ce65807668153a7220566c184f6e204d901e54e395c8f8"
    end
  end

  def install
    bin.install Dir["*"][0] => "github-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/github-backup --version 2>&1 || true")
  end
end
