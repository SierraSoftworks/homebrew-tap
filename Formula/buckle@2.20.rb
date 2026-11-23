class BuckleAT220 < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.20.1"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.20.1/buckle-darwin-arm64"
      sha256 "c5cca6fc3f8d2a7d11b0be958b16ed9ca5eaa9842463bce736cd680680f1f067"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.20.1/buckle-darwin-amd64"
      sha256 "848a04fe24237c0b38f14dfe3233b47f356a69b8b2ab2c252177b98395ac78cd"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.20.1/buckle-linux-arm64"
      sha256 "5566e12cdc3266c3a401c9320fa3a0be9698ba08587b6c75d18106081c837603"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.20.1/buckle-linux-amd64"
      sha256 "5c69141e73f4c704fcbfa7f7427374e416cab180d464afa6f0b85e0cf0f36637"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
