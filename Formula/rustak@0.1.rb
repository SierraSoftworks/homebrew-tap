class RustakAT01 < Formula
  desc "Single-binary TAK server for ATAK and CloudTAK, secure by default"
  homepage "https://github.com/SierraSoftworks/rustak"
  version "0.1.3"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.3/rustak-darwin-arm64"
      sha256 "b52593af5f625ed8b6eb90ee5fbb57d1ba0918d19404a67ba05b8a3509fd7f14"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.3/rustak-darwin-amd64"
      sha256 "bfef9d637899877613d77d0369a061423373d0f73161cda29c82acb88f4324a8"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.3/rustak-linux-arm64"
      sha256 "e14479e127a86abaf743e9fc262c92ff1580291e56d2696b2500dc068a5f764b"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.3/rustak-linux-amd64"
      sha256 "61dab539e5123452152991b220201b2f40ce93aefa99ebf40deec7dd3ab65430"
    end
  end

  def install
    bin.install Dir["*"][0] => "rustak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustak --version 2>&1 || true")
  end
end
