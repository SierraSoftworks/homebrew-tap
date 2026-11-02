class BuckleAT20 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "https://github.com/SierraSoftworks/buckle"
  version "2.0.1"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.0.1/buckle-darwin-arm64"
      sha256 "e9d69093c3ac96d04d2966a877404f71453dc8b647afe05ffe4a8f8c95ad9edc"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.0.1/buckle-darwin-amd64"
      sha256 "106c6c9ca08a2675f94cd4b72ee3c562d22fb1f844e9481ee197122fd06b2ff8"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.0.1/buckle-linux-arm64"
      sha256 "c30dbf63142260201e6d9eaa8630659a01e8735edfe2f7a5a8a9ab9af223a646"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.0.1/buckle-linux-amd64"
      sha256 "db9cb7a825cde43064af70bb3d77f72d6917c6d23ff4562a0606ff6a21d40d5a"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
