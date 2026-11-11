class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.12.11"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.11/buckle-darwin-arm64"
      sha256 "2962b6fb0fe53db2527f548eb82fb5a21744cd0595c750e77ac0006a2629917b"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.11/buckle-darwin-amd64"
      sha256 "a27edaade6506af2aeafbd36f43cf41b7c48b65fe60ffbcb558d292fd04a0e34"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.11/buckle-linux-arm64"
      sha256 "4b1c0d7fb4ffe6ba254e4ffa6808102f3a8871068131ce21e1c86c2d6994ea2f"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.11/buckle-linux-amd64"
      sha256 "11b7d2b21deb87f91b80b362d740b2c1a31a21b8cf44d3458191482ba52e1984"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
