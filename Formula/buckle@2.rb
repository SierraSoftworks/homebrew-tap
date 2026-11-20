class BuckleAT2 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.17.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.17.0/buckle-darwin-arm64"
      sha256 "45cf71e4b2547c0936069e9454c3b09959325ac452234a5c6f3fa007e42447fc"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.17.0/buckle-darwin-amd64"
      sha256 "532ffd6d240b05127a17533275e4e6a1bb35e81400b342b26befe546afd74feb"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.17.0/buckle-linux-arm64"
      sha256 "de6ea280493fb40062cfbfa56f92c4af08580505c064cb114e4634432f5ffc45"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.17.0/buckle-linux-amd64"
      sha256 "2cea4b3c79d137606dd7220a0822c8a7d4971dcf7e017e33f1bcc1cf6c323e4c"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
