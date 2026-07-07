class GitToolAT3 < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.12"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.12/git-tool-darwin-arm64"
      sha256 "c3eec8e9ffe5e5d6b18012bfdafa7bc5feaf5e22bc53e654da1b6f1f4d4086c5"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.12/git-tool-darwin-amd64"
      sha256 "bec8db36c32868f7b3377cc9b7228edda5c8ebd8682c855c0e4b7edef6cabb85"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.12/git-tool-linux-arm64"
      sha256 "d4812387a7f460066596a996ac721f3f509fe17af3cbf65bdf2228d50553264c"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.12/git-tool-linux-amd64"
      sha256 "74bca92a8a368e494c91add0cc006d87afcca5411c5306c1b8d234cf5142ef0e"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
