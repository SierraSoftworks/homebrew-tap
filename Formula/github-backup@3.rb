class GithubBackupAT3 < Formula
  desc "Automatically backup your GitHub repositories"
  homepage "https://github-backup.sierrasoftworks.com/"
  version "3.4.6"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.6/github-backup-darwin-arm64"
      sha256 "8fcc19c6c310944f0ece52f7a6dcbbea0237b23d960c851cb1ccd66c67972368"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.6/github-backup-darwin-amd64"
      sha256 "ee5892eb52be86da05be59d071e081e7ebadffdcb7edae791882ee960b58fc14"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.6/github-backup-linux-arm64"
      sha256 "32f48e4e4317d6352156a04b5dc8b12f41965326d7789a89a4bed0379c9e9a57"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.6/github-backup-linux-amd64"
      sha256 "95797812ffe3d8322ed955bee60df58def30eb50d23a56396cb57f2f7bbffeb2"
    end
  end

  def install
    bin.install Dir["*"][0] => "github-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/github-backup --version 2>&1 || true")
  end
end
