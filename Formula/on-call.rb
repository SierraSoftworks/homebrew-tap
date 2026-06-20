class OnCall < Formula
  desc "Generate fair on-call schedules with a simple, declarative, specification"
  homepage "https://github.com/SierraSoftworks/on-call"
  version "1.1.4"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/on-call/releases/download/v1.1.4/on-call-darwin-arm64"
      sha256 "33240d2d0da1a5e371e46e72d8eb98f30bdb7e57009cea855b32117528b00f69"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/on-call/releases/download/v1.1.4/on-call-darwin-amd64"
      sha256 "454372459b30be9fc64f090358f84f922b001bfcd62bbaaa88ac23e81068cf7a"
    end
  end

  on_linux do
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/on-call/releases/download/v1.1.4/on-call-linux-amd64"
      sha256 "a5f0c0e10610b975bb8bfe6d24f92719b47cab08be5cb412676f5556634a8ffb"
    end
  end

  def install
    bin.install Dir["*"][0] => "on-call"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/on-call --version 2>&1 || true")
  end
end
