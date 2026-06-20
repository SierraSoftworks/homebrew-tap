class BuckleAT13 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "https://github.com/SierraSoftworks/buckle"
  version "1.3.6"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v1.3.6/buckle-darwin-amd64"
      sha256 "dcecc463b13852d8b25710fb5b112e9b2959a340eec5a6f05ffb77e524f3b835"
    end
  end

  on_linux do
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v1.3.6/buckle-linux-amd64"
      sha256 "128024d68eb0766bdb26e4aa80fb53d2e4e307306d33c876660a2391b0ca91ed"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
