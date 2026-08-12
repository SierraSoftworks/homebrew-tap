class GitTool < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.20"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.20/git-tool-darwin-arm64"
      sha256 "2b2bffb6be7cb11b68c8736a2630a9a252b78c62c3abd68bc683469d89f450b2"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.20/git-tool-darwin-amd64"
      sha256 "fa948ff24673d46a1c83819cdcd8309db9a36345b8e8aac56ccfb1d7e65635a9"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.20/git-tool-linux-arm64"
      sha256 "e60e853bd31d6950b1f01fd4bdb6df8c7d080100831e30b6455acc29d3965765"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.20/git-tool-linux-amd64"
      sha256 "4d45e8a77921f675d17a6cf7528142504f96da77172e206d15d5e2e215eaebf7"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
