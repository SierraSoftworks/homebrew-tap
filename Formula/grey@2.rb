class GreyAT2 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.1.0"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.1.0/grey-darwin-arm64"
      sha256 "3222bf4f0923f993e07b6af3489995738555d63af503b701797a099bddb58746"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.1.0/grey-darwin-amd64"
      sha256 "1c8da581b512a9aafcc678cbb4a095d44c5f42529f3a42d7de7c7d3c1c788a96"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.1.0/grey-linux-arm64"
      sha256 "6f0b96859b12e2071ae31db55bb71d8e18e93db5131aa96bb675c4e99152613f"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.1.0/grey-linux-amd64"
      sha256 "b1fe75dace58c0a3bd709de067b27ec3ea5ade3db76c97868abc475b250a6429"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
