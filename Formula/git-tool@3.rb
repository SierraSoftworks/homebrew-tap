class GitToolAT3 < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.17"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.17/git-tool-darwin-arm64"
      sha256 "3a1b5b017d90b44a426e2dc6e468887560b381d3e581273178adea2e0f8c117a"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.17/git-tool-darwin-amd64"
      sha256 "26dd0a4192688c405c0636161855de8a2becddd4a861ff6b03a290c8ccf4935c"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.17/git-tool-linux-arm64"
      sha256 "0a1b71260c4bbc862243e1a5a5e073b897763dea6aef850e67c90722385cf525"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.17/git-tool-linux-amd64"
      sha256 "3b7204484cfdc892450c6507f186a6ba4c9b31f3196ba5c750d06a929eb1f494"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
