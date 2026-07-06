class GitTool < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.9"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.9/git-tool-darwin-arm64"
      sha256 "155fda46dc05bfd8f97baa4954ded3ea1a2b3bbb9393be695c0e1ef7af45b154"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.9/git-tool-darwin-amd64"
      sha256 "9913d4339063ad1d190960f3de98a128bda0e86982bb84a7e59f49ac1e3c6645"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.9/git-tool-linux-arm64"
      sha256 "b7a98b1b766312684ef6e6d6ee6271659b30d74725883947cf4ca3aaca278226"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.9/git-tool-linux-amd64"
      sha256 "883ec50e7c10c99b92d92ed32e1dc97f387b931857775a5effb3511daec09cb2"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
