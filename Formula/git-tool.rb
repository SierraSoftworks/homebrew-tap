class GitTool < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.23"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.23/git-tool-darwin-arm64"
      sha256 "dbd30e8b16f24dd85b60a7c0b4605e7cea8e4343eb3a5dcf4627c1dee952ea29"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.23/git-tool-darwin-amd64"
      sha256 "060a11acc7b06c0f6231e33661221a8ae1b44d2c1b2bb38e2113ef1b70bb4a18"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.23/git-tool-linux-arm64"
      sha256 "58b0700a825470c86e895cda90703a7e97772e96c6b17caf0088acbebf8f71da"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.23/git-tool-linux-amd64"
      sha256 "715071f821abd4c4b17398aff26deaba626666019e378fd3c4bbbc753922b443"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
