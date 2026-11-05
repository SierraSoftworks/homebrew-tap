class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.12.0"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.0/buckle-darwin-arm64"
      sha256 "8599d58c57d31b0f341829fec79b2998c83f6d3440daae0bc575af32fffdf87b"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.0/buckle-darwin-amd64"
      sha256 "0071c4028e169194f62ac856a91c981bd7e9ba6e304b2ec08a0ef3e449899a28"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.0/buckle-linux-arm64"
      sha256 "d076e308e054d1d46a6253f516c77b7a104c6ead87444f5b049bbabe876d2834"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.0/buckle-linux-amd64"
      sha256 "34b75f9a6971ac074c9b7619bd84afce7193326d4f6a6d7a36f8eb11bf794552"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
