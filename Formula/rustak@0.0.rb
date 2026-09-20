class RustakAT00 < Formula
  desc "Single-binary TAK server for ATAK and CloudTAK, secure by default"
  homepage "https://github.com/SierraSoftworks/rustak"
  version "0.0.3"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.0.3/rustak-darwin-arm64"
      sha256 "7af14497f1c429bcf9cc29bccae68bc325ed30c7e4a1254881210ca9421f4cdd"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.0.3/rustak-darwin-amd64"
      sha256 "9b2435bf510bc50cc8c024d73c7094d9ca1276551352c68e16e9bbd2c9f3f3c4"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.0.3/rustak-linux-arm64"
      sha256 "f6fc29978c45af472ea372ff82fce2bb8093552552e8061a784d0a7afa503ffd"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.0.3/rustak-linux-amd64"
      sha256 "80711360bc37d3bb1b4fd712aceded1b045472e739d1fa89040b7cb241ac203b"
    end
  end

  def install
    bin.install Dir["*"][0] => "rustak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustak --version 2>&1 || true")
  end
end
