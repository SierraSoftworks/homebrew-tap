class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.21.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.21.0/buckle-darwin-arm64"
      sha256 "926e65b09fbac42f3582fff6debc6b97f930605a5e210021252b644f00c5da85"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.21.0/buckle-darwin-amd64"
      sha256 "75df7482356e259d88d05564f9b3de2a72029b684a6f7c94cade95fb95b81c9a"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.21.0/buckle-linux-arm64"
      sha256 "f89011afd749ca69dabb76cd55456d61310bd076987a70c0390fe602bb0022ec"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.21.0/buckle-linux-amd64"
      sha256 "d45064ca6b9fa858ae7fbbe7648b273f91cb31a28a680afd1258382257e3957b"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
