class BuckleAT26 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.6.1"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.6.1/buckle-darwin-arm64"
      sha256 "e484f68a6119d8ec83cf15367fa8802712b2276549a3c138518e55dccac971b1"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.6.1/buckle-darwin-amd64"
      sha256 "52e9c872ebf37f7036fd1091a2d0950f2b372289b1848cc5052bce73ef7315d8"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.6.1/buckle-linux-arm64"
      sha256 "d6c014c5de7be51755ac3fd8542185896bcad5ab7627ab5f0886c0fbbe7cc4c3"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.6.1/buckle-linux-amd64"
      sha256 "5090e6b91e254a04d0558c3e8fb2782399525de5110a3231216e4d8d8138d825"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
