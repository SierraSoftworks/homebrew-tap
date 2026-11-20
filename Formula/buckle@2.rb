class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.16.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.16.0/buckle-darwin-arm64"
      sha256 "fdc79278b1b9e7bde54f6568423289756f93a3a65ba6c225a3a4d62f2c36e0ec"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.16.0/buckle-darwin-amd64"
      sha256 "4f8da8c5b4c9fdc16017a6e2caa65e0351584208ab9d423c1ad05da1ce804762"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.16.0/buckle-linux-arm64"
      sha256 "d2a0ab750148df2e3f185da82d733cb8177a24859a9a1bd13e3dbad9da97ef1e"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.16.0/buckle-linux-amd64"
      sha256 "a8d864d665042b817fec70808faf9dd6b1f37caf3bf2cc43452f12513d0987ed"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
