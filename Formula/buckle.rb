class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "https://github.com/SierraSoftworks/buckle"
  version "2.0.2"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.0.2/buckle-darwin-arm64"
      sha256 "3b9080b1f538bee0bcb0ab8a758ee2ecafbdb214511edc13d472089782d5567d"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.0.2/buckle-darwin-amd64"
      sha256 "629e51e8057ed5af0b176231e9e2439d73bef9b274d8860f70e61413e8e8d5d3"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.0.2/buckle-linux-arm64"
      sha256 "5a6ab75792c0dff9835f5665455c11b958e294f09396b983202b67cf62c27ece"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.0.2/buckle-linux-amd64"
      sha256 "a81e45e82838d47d8df422bd55a8064fed2e75b4572caf01f035664f1a6e37db"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
