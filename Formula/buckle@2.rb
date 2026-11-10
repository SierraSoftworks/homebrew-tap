class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.12.8"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.8/buckle-darwin-arm64"
      sha256 "9be6cdc2170f24c6c13f308aea0a9ff3f098830ae65ff85a45a7fc7d2699af19"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.8/buckle-darwin-amd64"
      sha256 "e702b80ff8b501c055caa59fd562214f6ab2f5796f3e0fbe9f91941af0e15b24"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.8/buckle-linux-arm64"
      sha256 "99484feebf0265cc7a9118c60eca032e6bcb4828f0da5ec005fc45212f53a0ab"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.8/buckle-linux-amd64"
      sha256 "4ea89abb27469f984021e1576a325efb2e3b34fa246d23fc6b44e70cd9d8e35c"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
