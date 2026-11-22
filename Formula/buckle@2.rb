class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.19.2"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.19.2/buckle-darwin-arm64"
      sha256 "3467237d96bace46808c8ce9a5fc82eaf43c68c9656518d243d31cd261def0ec"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.19.2/buckle-darwin-amd64"
      sha256 "d4d63e877cd25b7c803b1fc50c28c99d6626ebf472f9663676fb79c502724562"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.19.2/buckle-linux-arm64"
      sha256 "bca3669fdccff8dbb6a46df032fd561b336da79e38144b27f45c917fb733c6f0"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.19.2/buckle-linux-amd64"
      sha256 "538938cd55126c30a021f1733588af80db922b3c2d441dfbfc9882700544f491"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
