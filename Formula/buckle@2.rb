class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.18.1"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.18.1/buckle-darwin-arm64"
      sha256 "56ab86811dccecb883d951c7621c0bf0964a8f34252d96ef8f4f33b2ab77a16c"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.18.1/buckle-darwin-amd64"
      sha256 "5eb49158ab733c9bd70a6b2d01c2881d84890796d4058b801b8838e0ef9dc97b"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.18.1/buckle-linux-arm64"
      sha256 "dcad78feae8816dfb1fb00698dbf03c173bb6c30b596e3ac5acec761c873b99f"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.18.1/buckle-linux-amd64"
      sha256 "29799a512ef56709e56f0a48676d5c1069d5b95e657dbde581b8062068a0f7f8"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
