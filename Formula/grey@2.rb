class GreyAT2 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.2.1"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.1/grey-darwin-arm64"
      sha256 "ea9f11e589c49e546ea7b9589ab3b931d417be021bf7ff361b0de8accd64fea5"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.1/grey-darwin-amd64"
      sha256 "8c58fd77bdda96ae4ad05f7452940d8ceacbb39da84e0506205a8af3550e6938"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.1/grey-linux-arm64"
      sha256 "9060a8b78a3887d01323a012b89059ce9c6306c26919bc767a88ed9810e223ec"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.1/grey-linux-amd64"
      sha256 "4b05f970b548d16d6d5ff7976a7f91815d83fc462bbd3559983b0c1de753f43f"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
