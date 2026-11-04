class BuckleAT26 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.6.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.6.0/buckle-darwin-arm64"
      sha256 "b4bbefc798cd6e79f8261163dc5546943cc9c4f21b27b956217ec62e51633aaa"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.6.0/buckle-darwin-amd64"
      sha256 "1f2bc1430a450baa9590dc267645a2010435eb0603907fb540e651ff723eb4ff"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.6.0/buckle-linux-arm64"
      sha256 "e9761e10ea1fab85064b99d446bb982dcd0e0d55806ec186aab34f9b87d25e56"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.6.0/buckle-linux-amd64"
      sha256 "4f9faba5d65b81dda02105cb0d324bd571d52ef367e7e4a0fc9d322ca6e6de3b"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
