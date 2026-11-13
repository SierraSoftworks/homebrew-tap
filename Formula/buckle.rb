class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.13.0"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.13.0/buckle-darwin-arm64"
      sha256 "43653aa04e9c587d92a6b8165a3e134f0aaa024d24463282cb21156a03735610"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.13.0/buckle-darwin-amd64"
      sha256 "39308e919d935a3ee7ff5e4afaae83f64ffe7621d5ddb6f0bba31d3bdd37dfe5"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.13.0/buckle-linux-arm64"
      sha256 "be86e63f4e4aa508a60801ba705d2923785b5d2b7f40aff4e3f9cd0a9e0ebc66"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.13.0/buckle-linux-amd64"
      sha256 "968d712507089d0feccf6ee8b043eb5258f9143c8364bbefb9efc693c6962a7a"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
