class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "https://github.com/SierraSoftworks/buckle"
  version "2.2.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.2.0/buckle-darwin-arm64"
      sha256 "609e7853cae48c5048464e0af100350fd9b1126c105cf2d9e4319bbdfb8640dc"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.2.0/buckle-darwin-amd64"
      sha256 "67bdb7da54eca73ac35752b1726341d4c9dc744567933b19837e08306ba8c5ee"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.2.0/buckle-linux-arm64"
      sha256 "06e2db5cb8a4191938e9a05c8f0f6d810a74a44695b9943fdd056b4ca880be95"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.2.0/buckle-linux-amd64"
      sha256 "fd6cbcee37396d28e34b41bdb7f6bb98a04286dd956552441cb770589227698d"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
