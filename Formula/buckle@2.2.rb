class BuckleAT22 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "https://github.com/SierraSoftworks/buckle"
  version "2.2.1"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.2.1/buckle-darwin-arm64"
      sha256 "fb78952491614b899a8125c5d110ad7a9090fda3cd665c95a738422e31b66771"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.2.1/buckle-darwin-amd64"
      sha256 "45f699b1f748fb0fa4a5756ce268ccf13316d41e81882c721d525618b08bc75e"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.2.1/buckle-linux-arm64"
      sha256 "d41effa73d36f01c47040c613d28bccfe3be0ff01cfe5897c29f249d37210fb8"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.2.1/buckle-linux-amd64"
      sha256 "472ffa10e7c4e17af181d1a5caea219971dcbab743fdb8a111e01135e27415e6"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
