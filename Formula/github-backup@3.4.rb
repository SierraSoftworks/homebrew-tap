class GithubBackupAT34 < Formula
  desc "Automatically backup your GitHub repositories"
  homepage "https://github-backup.sierrasoftworks.com/"
  version "3.4.5"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.5/github-backup-darwin-arm64"
      sha256 "250923b4c90fa1f3140ac51e198449b9037b12251d208895c7531fbb8230b1c7"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.5/github-backup-darwin-amd64"
      sha256 "dd2464c1000b45be1bd8c34b5bc6fd5028aa1c2fe423cb4424cac7ee038f5752"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.5/github-backup-linux-arm64"
      sha256 "fa7b0cd2ecf6aa678b81a44cfb56b4eded09cf72944d7cfeaca079f7de0f1dc5"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.5/github-backup-linux-amd64"
      sha256 "1285bb33f31e2f2325d54eb865357d1dd73c3ae37ee25c6559dfffe75f20fbb3"
    end
  end

  def install
    bin.install Dir["*"][0] => "github-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/github-backup --version 2>&1 || true")
  end
end
