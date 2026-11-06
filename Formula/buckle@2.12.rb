class BuckleAT212 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.12.3"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.3/buckle-darwin-arm64"
      sha256 "6f35e79f506c503da0a13431447171d99073ed34f83d4050a160bf7f4fb2d3f9"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.3/buckle-darwin-amd64"
      sha256 "08c8b68e84550a86aa55ecea4fed79757b8b3ba257f6d93e22089982e3547b01"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.3/buckle-linux-arm64"
      sha256 "0ad9b0fc7a87633aecb4c1c33b3a216f023cc63b4e17572960bb00c448b7930c"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.3/buckle-linux-amd64"
      sha256 "e9058c703d23f8e46a9af53237e555daa0a9afd3b0e7a964d7670482d425a208"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
