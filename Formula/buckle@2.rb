class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.12.5"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.5/buckle-darwin-arm64"
      sha256 "ee82f4e172b773dcd8e6cd27f45372419067928896ad965f8250afe12de6985b"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.5/buckle-darwin-amd64"
      sha256 "882f8f92484bf1a4a8ca11a8ffce1896abd44f4b1e4489ba1d9e72ba975a1b83"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.5/buckle-linux-arm64"
      sha256 "e9968d7e6c789650e506c079bc76f1cf8b7230dc1f1ca2de4511bec291f58cff"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.12.5/buckle-linux-amd64"
      sha256 "de8fd4024c054c248e885206f4c1b7cfdef23e531289374f108788ed5d8cacdd"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
