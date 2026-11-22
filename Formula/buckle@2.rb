class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.19.1"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.19.1/buckle-darwin-arm64"
      sha256 "a628a1ed7b4d20bd9fd37815772e53fe2b65c454d1dc8beaf803dce1906d3f53"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.19.1/buckle-darwin-amd64"
      sha256 "69e5a4f70f1ef9f7cd96c0032c7a54b8b8512de294e664405fb70edcb2b3e457"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.19.1/buckle-linux-arm64"
      sha256 "d49b0a0a29e2c85837b56701cb7ae636980486695fe764fe986cea06240b442f"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.19.1/buckle-linux-amd64"
      sha256 "8100fdd45a46279ae07faa6bd1db2a727b839f6777edde74afda99675c13ddb0"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
