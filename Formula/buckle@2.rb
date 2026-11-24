class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.22.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.22.0/buckle-darwin-arm64"
      sha256 "fe09438c5d95040e1d2aa34141b420b91b09214d942b8f3f2043a6a952bd5d80"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.22.0/buckle-darwin-amd64"
      sha256 "30dafc4cbaabc32ccfb8c0a0a7691d2692731591a204a6234e259d5ad9817570"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.22.0/buckle-linux-arm64"
      sha256 "cf83e9428f189b29a4ce93634a19abe8fcf8620e121757de2f20ab12c9dc2c09"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.22.0/buckle-linux-amd64"
      sha256 "1e939d398cbb57fa1d456755f21650ecfdc624c2105c379f80092f627e5d07f9"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
