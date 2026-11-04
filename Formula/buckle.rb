class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.7.0"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.7.0/buckle-darwin-arm64"
      sha256 "75c1de83780469631f5b64ea713fa4581370e73dbd28bd8bf89a6401471a4f72"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.7.0/buckle-darwin-amd64"
      sha256 "48fba1f6bca0f0edbf3d921638753f592d3fc6dd77669deab8e1210feec8fa92"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.7.0/buckle-linux-arm64"
      sha256 "4bc844ec0fddcb95fb5afe5491834b1cdf374a1ef14798de264bd0b5ac586275"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.7.0/buckle-linux-amd64"
      sha256 "95252250448df7c3c8940d2047739841e216bde0e729e559d87344745b40c6b1"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
