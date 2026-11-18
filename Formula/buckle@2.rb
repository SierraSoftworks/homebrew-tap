class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.14.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.14.0/buckle-darwin-arm64"
      sha256 "ae7f2b7c57dd8a52c4a27e8a06b7d136af5a168ceb79845b4ba8931af4a17102"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.14.0/buckle-darwin-amd64"
      sha256 "1e08cc2fbd310f8cdc563dd47d2f46b5c7925d590c1286a4a00e940ac112cc80"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.14.0/buckle-linux-arm64"
      sha256 "8ebc87c406cc149d4a208adbb96b398c24a0b9d723a6318ddc32cc2bd475957d"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.14.0/buckle-linux-amd64"
      sha256 "e9a4f58873ef892648ad4add89a79cd1e4db28f92f35009b422e5c270b139c3d"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
