class GithubBackupAT3 < Formula
  desc "Automatically backup your GitHub repositories"
  homepage "https://github-backup.sierrasoftworks.com/"
  version "3.4.12"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.12/github-backup-darwin-arm64"
      sha256 "20c89e474e76f1aa44188eccf992142ca2bb344ca150606b3367b98ea3cda0ad"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.12/github-backup-darwin-amd64"
      sha256 "0512b9ad49f6119e78e0bec060b646e039d7ae852251e31a4ce762cbc76a3ebe"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.12/github-backup-linux-arm64"
      sha256 "2bdd902befbb26ed308668e713439dccc4d78111ae290677490ea81b80d62ca1"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.12/github-backup-linux-amd64"
      sha256 "1fe5824e6067e5973fb214da843f3881a76793c055825ae093050aa881f05bb8"
    end
  end

  def install
    bin.install Dir["*"][0] => "github-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/github-backup --version 2>&1 || true")
  end
end
