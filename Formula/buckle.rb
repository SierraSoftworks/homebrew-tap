class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.3.2"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.3.2/buckle-darwin-arm64"
      sha256 "db0420d97d0a4802ab1120fe103a95c960e4a4e212bbc35c05a31b69e01d6b95"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.3.2/buckle-darwin-amd64"
      sha256 "49b4616d2e2ed7fbde3461ea87f9ffbe9a8b6534e7834bfa3281dfd1104fd536"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.3.2/buckle-linux-arm64"
      sha256 "35088be3b762aec2e174c4e685788c88e1b27e609d964756d18c174c95a34540"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.3.2/buckle-linux-amd64"
      sha256 "56f914976c2880317ce1125a609762eb26b6317a5cdbd9aefc6e328535784e73"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
