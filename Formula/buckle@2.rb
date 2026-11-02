class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "https://github.com/SierraSoftworks/buckle"
  version "2.0.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.0.0/buckle-darwin-arm64"
      sha256 "3f2c4fb6359d0ce314cd9e34448656c7875f1f7725f2d82c9d51500caa077d9f"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.0.0/buckle-darwin-amd64"
      sha256 "3f8c9264604ccc2451fac38e6e2e1f7cf2b9b1402b5b565401f06d85de7e97b9"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.0.0/buckle-linux-arm64"
      sha256 "ce7c2e7f9f0583f37d1634538c79ed11c1d239f912b51ba446b3ec0a73757847"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.0.0/buckle-linux-amd64"
      sha256 "c7940b5b591dc9aedbb458f1ef4d56d101d59031544bd3f97955838de060b8ec"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
