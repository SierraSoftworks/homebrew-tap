class GreyAT20 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.0.9"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.9/grey-darwin-arm64"
      sha256 "e21c41d0f95c8431203663b282d0d00f02e80c58cc1c593906d088f3d8604a73"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.9/grey-darwin-amd64"
      sha256 "b87a5fec78e71ad8f0c4509bc0ca639a1b8a1468e35088920304ab4029d50e48"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.9/grey-linux-arm64"
      sha256 "00a31754f723e8b9c0d4b82a8e7857ff18c0288759f6b6b08b68a8fdebdd0e64"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.9/grey-linux-amd64"
      sha256 "6b74081b3c9d78b8fcf8083fdef1f2df8519d0a5d62b7b713a31022b2ede1b73"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
