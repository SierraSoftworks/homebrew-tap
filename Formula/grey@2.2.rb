class GreyAT22 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.2.3"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.3/grey-darwin-arm64"
      sha256 "1193ebf3ea689b2f41ecf95f83eedef854753e419333c700a9ee103359dc3c0a"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.3/grey-darwin-amd64"
      sha256 "3616d108c998d2937bfbb00144839011faa2cf4c3fbe82ff914297e5c1fdba83"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.3/grey-linux-arm64"
      sha256 "ef42b0c05d79ebfa00f587076e93867fcb8a0205d98566191c5acc003632d9f2"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.3/grey-linux-amd64"
      sha256 "2b44ecdaecdb77902f0874645bcc527eaba73561e1c4aaea1c67ba84c063f18b"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
