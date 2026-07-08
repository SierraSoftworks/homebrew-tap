class GithubBackup < Formula
  desc "Automatically backup your GitHub repositories"
  homepage "https://github-backup.sierrasoftworks.com/"
  version "3.4.9"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.9/github-backup-darwin-arm64"
      sha256 "4a2862455b292b62a2d6e2fce12e1ac076d62ab5603100bd92da63edfae2e1a1"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.9/github-backup-darwin-amd64"
      sha256 "c02bd57bde02adc0cfde6242ab7b19f60447bb4ff62765905559cb8127c759c7"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.9/github-backup-linux-arm64"
      sha256 "8def4af8f692f5d2a50f1945b1970e6e385f0cee7520fa5ca324bca29507da10"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.9/github-backup-linux-amd64"
      sha256 "c25128205c3ffd28f1e0479e4005778b9e2bf2505315d8e9d8e90fffa27a6bc8"
    end
  end

  def install
    bin.install Dir["*"][0] => "github-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/github-backup --version 2>&1 || true")
  end
end
