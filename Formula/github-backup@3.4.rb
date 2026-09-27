class GithubBackupAT34 < Formula
  desc "Automatically backup your GitHub repositories"
  homepage "https://github-backup.sierrasoftworks.com/"
  version "3.4.13"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.13/github-backup-darwin-arm64"
      sha256 "9ba08aa1fd28fb1088fb7b7266c85c4e306a254e6cf40e4732fd123bf850e8be"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.13/github-backup-darwin-amd64"
      sha256 "39328d084e78d645a768f22c0de918be506b6ebe9f5d2fcd1b8ff24fb2ee55d1"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.13/github-backup-linux-arm64"
      sha256 "d1aaddb04de4131c662e79719b8a8e51097cab6d3056c05adebb7ca52d58f4c2"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.13/github-backup-linux-amd64"
      sha256 "d2db0ca5cb37b23dd0739b5854964150e07226f9efc5c3d7412b18c17ac480f9"
    end
  end

  def install
    bin.install Dir["*"][0] => "github-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/github-backup --version 2>&1 || true")
  end
end
