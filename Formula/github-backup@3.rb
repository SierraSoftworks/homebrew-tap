class GithubBackupAT3 < Formula
  desc "Automatically backup your GitHub repositories"
  homepage "https://github-backup.sierrasoftworks.com/"
  version "3.4.10"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.10/github-backup-darwin-arm64"
      sha256 "b502d8ab49937c72985caa6681872b3618a55065e0945816097cf743f05b41c5"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.10/github-backup-darwin-amd64"
      sha256 "bd9077fc173a771eafec252506f88f9aacd645190ed7eeaf2511a5ca9f96d7a6"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.10/github-backup-linux-arm64"
      sha256 "b82175c234f1f56cb130f43cca6ee0c4439a45ea9bda03091877d5706b720bbc"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/github-backup/releases/download/v3.4.10/github-backup-linux-amd64"
      sha256 "6ba029878e359d6d3bab722ad5700683cae0f9c83cd8bcc2b9ba025adcb3e181"
    end
  end

  def install
    bin.install Dir["*"][0] => "github-backup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/github-backup --version 2>&1 || true")
  end
end
