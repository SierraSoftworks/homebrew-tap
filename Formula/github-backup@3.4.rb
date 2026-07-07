class GithubBackupAT34 < Formula
  desc "Automatically backup your GitHub repositories"
  homepage "https://github-backup.sierrasoftworks.com/"
  version "3.4.7"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.7/github-backup-darwin-arm64"
      sha256 "73c96d6b509493bdf1d65fb6ad15da53fdb6907fb19dc6a1cd55b3a90af6fcad"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.7/github-backup-darwin-amd64"
      sha256 "4264fccec4d14eed83bc94f2b73affe4a206bc3b34e16b5aa8c5cd1f9a910395"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.7/github-backup-linux-arm64"
      sha256 "fd615970865eab37074c0c1f5ca042b4a8629474ccc81ff8244fbb4683d2a22d"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.7/github-backup-linux-amd64"
      sha256 "22b0bda84c9b2b6fc2bb22217efd6f7029afab8bdb23d70d5ba637776cab98cb"
    end
  end

  def install
    bin.install Dir["*"][0] => "github-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/github-backup --version 2>&1 || true")
  end
end
