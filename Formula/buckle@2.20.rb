class BuckleAT220 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.20.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.20.0/buckle-darwin-arm64"
      sha256 "83d000109a492e060db2444a17b60db49878970c2fd7a23968f5885ff4a06d5a"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.20.0/buckle-darwin-amd64"
      sha256 "0f18a117e4579a4d3a12ee88d4f3c1ce9fa377ab90bfa208449c320b269eed15"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.20.0/buckle-linux-arm64"
      sha256 "fdd8c85f1163124253ab558053077c3ddb635558fb6c16e2231fcf7f54c57511"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.20.0/buckle-linux-amd64"
      sha256 "50b32b7627b89e4eadfc300b3c95a032d4cbfbab93e8230af12e4e8e6b812dfd"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
