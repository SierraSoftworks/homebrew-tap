class GreyAT2 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.0.8"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.8/grey-darwin-arm64"
      sha256 "086ba751d3858c099042b211159124dfcd4e01b50398a3e5a8d00dba27f0140f"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.8/grey-darwin-amd64"
      sha256 "e9bac2c44dae59770acf9c2ae768b06b50ff17793a27ee841d309118be72ec09"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.8/grey-linux-arm64"
      sha256 "fb6ce21b10d61c1843d410021f1a2f20d5d81e263d552b9cf8d4fa687a62174b"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.8/grey-linux-amd64"
      sha256 "ea9f2cacb262367de15f6aed4cf360a72ce9c103c313f0656839db259bb09200"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
