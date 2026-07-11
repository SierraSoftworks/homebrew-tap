class GithubBackupAT34 < Formula
  desc "Automatically backup your GitHub repositories"
  homepage "https://github-backup.sierrasoftworks.com/"
  version "3.4.11"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.11/github-backup-darwin-arm64"
      sha256 "fcb0e73b482f3cd73e1491ab5063091a5169442a63dbcbdc7e0d26341e60893a"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.11/github-backup-darwin-amd64"
      sha256 "73be9a331138463982f9a1fa890768a258544addb50a2377bea809629261f386"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.11/github-backup-linux-arm64"
      sha256 "44178f5e5f0ffab38a37bd37c33f690b563f0273a3c0686b630d98af1c4ab3f7"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.11/github-backup-linux-amd64"
      sha256 "9f4740ffdb7b9a7a15f0630a7c9fd6ebb06c562549555a597d4c9a00f33271c1"
    end
  end

  def install
    bin.install Dir["*"][0] => "github-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/github-backup --version 2>&1 || true")
  end
end
