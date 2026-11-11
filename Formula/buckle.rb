class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.12.10"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.10/buckle-darwin-arm64"
      sha256 "2b9db38f390b3d9ec8cadc6f73c83188c035014a74c62c117408c04ac1e75b9a"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.10/buckle-darwin-amd64"
      sha256 "0c422d6adbe1f6a2a499ec084975cfb27278c4fad8e19f90559d6fbd7d5315fe"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.10/buckle-linux-arm64"
      sha256 "50c862b8f02e4f49f7abd5df9bf5bb05cd08a007f9ec9b2354c2484fad0e91a5"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.10/buckle-linux-amd64"
      sha256 "492c624928cbc7489cbe8eae5a3cdacb2767c549e327e39891487f4b7ae18f21"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
