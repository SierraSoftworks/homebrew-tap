class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.12.1"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.1/buckle-darwin-arm64"
      sha256 "fec56cb62e4f188f5dfe118d5169d0e29889c616eb1965d641c87f0e9c57c205"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.1/buckle-darwin-amd64"
      sha256 "0a9dea9fb26f83f077d23096c4e1ffc48f46be6b340b3bd6e4026d9b53e53718"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.1/buckle-linux-arm64"
      sha256 "e45815e37bab99f7aea2713ff3c567da5da65f43e5c34b31a2faf2cfd20835e3"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.1/buckle-linux-amd64"
      sha256 "45b4aa7322b36cc5597d72bedd1759fbb249ceea44576a95521e0efe46449815"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
