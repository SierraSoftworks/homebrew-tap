class RustakAT0 < Formula
  desc "Single-binary TAK server for ATAK and CloudTAK, secure by default"
  homepage "https://github.com/SierraSoftworks/rustak"
  version "0.1.2"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.2/rustak-darwin-arm64"
      sha256 "0059a8bd004b12b6696428ac4455d11ef2dc4f45c6460e545de0063bf352a97b"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.2/rustak-darwin-amd64"
      sha256 "2d81e287cf41c91f36442bac6a8ccb86f54cbfec8d265ad168033535a45dea23"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.2/rustak-linux-arm64"
      sha256 "8aed5831bfcc858fdd03e3a1ecac6f422d7f85f35bfc541baccfb41562ba6d1c"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.2/rustak-linux-amd64"
      sha256 "c0a5fad91adfb7380a0a7f717895a3269eb0806c9b90d6ef850cfbdcdea5d6f8"
    end
  end

  def install
    bin.install Dir["*"][0] => "rustak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustak --version 2>&1 || true")
  end
end
