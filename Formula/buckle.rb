class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "https://github.com/SierraSoftworks/buckle"
  version "2.2.2"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.2.2/buckle-darwin-arm64"
      sha256 "b88f47fcd156df95de1588d02cc859359aa171ee49674a9ccfd5c0fe4a427fec"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.2.2/buckle-darwin-amd64"
      sha256 "4c1ec3bd4d4c7655f34d69b40b8fe58e143d991a287f92f931eebf9dab5fc8c1"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.2.2/buckle-linux-arm64"
      sha256 "bc2789fa71f56e5690ae3cde213f8207015a926bc3e583108449f00305d7769e"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.2.2/buckle-linux-amd64"
      sha256 "1c38328721381656ab5e5826dd27153cde05363263d3d583213f1e2df442d4d4"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
