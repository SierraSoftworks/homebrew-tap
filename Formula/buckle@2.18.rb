class BuckleAT218 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.18.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.18.0/buckle-darwin-arm64"
      sha256 "7c6c9bad9809e509f1b79c933b2c48c3bbd657b3d4f2736561cb488c439fb510"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.18.0/buckle-darwin-amd64"
      sha256 "9055be99727ac5ce9ff8f36028ef342257301a7a141447ead6b76b88e48db4ed"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.18.0/buckle-linux-arm64"
      sha256 "9240631a68df7af854df609f3e8c9991d7ef92800bb4529076e4aba2b1347130"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.18.0/buckle-linux-amd64"
      sha256 "3b9d024c29dc9260c40206bcd57d60de764462a6f4c0c439e17d50bc87dd905b"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
