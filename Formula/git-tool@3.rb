class GitToolAT3 < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.21"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.21/git-tool-darwin-arm64"
      sha256 "6165157459033a0d3999d0e0c4a9d137d0a6cbcf64b68b54c3c14d3feb3edc7f"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.21/git-tool-darwin-amd64"
      sha256 "357c85778c0f38ba1a0ec61e594e007b4cc84004d2e3fa0ad05d451a303777eb"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.21/git-tool-linux-arm64"
      sha256 "f081713c82eed7780b05007633eb0e45fafdbff6931a4900c0662ed9d24cf32d"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.21/git-tool-linux-amd64"
      sha256 "04c3ff5f56acc791488a1df71b14afb00ba97ed1e514dbee77d307799c67d8e7"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
