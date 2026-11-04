class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.8.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.8.0/buckle-darwin-arm64"
      sha256 "a41b9e7085eac19a1566451b9c5128ba8b58d2b814f171147b4699d798558af0"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.8.0/buckle-darwin-amd64"
      sha256 "08d530524c0983067e5574a42688f526eb85f6bd30bd26c586ea23bd5fb7fdd8"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.8.0/buckle-linux-arm64"
      sha256 "4c83dca29cd30ebb8e15b49b32138735a0e9c0e7f2f3aced9957975daf52497e"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.8.0/buckle-linux-amd64"
      sha256 "63c8f7154de61d92c00e6c50dfb6cfff197fffe2c8b7a505ce88a4c87d79da44"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
