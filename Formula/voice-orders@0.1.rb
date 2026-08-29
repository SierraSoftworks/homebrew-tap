class VoiceOrdersAT01 < Formula
  desc "Native voice-based macros for Linux"
  homepage "http://voice-orders.sierrasoftworks.com/"
  version "0.1.3"
  license "MIT"
  keg_only :versioned_formula

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/voice-rs/releases/download/v0.1.3/voice-orders-linux-arm64"
      sha256 "980011a5cd959f7250d66349916cdf9a89c17e6e7ba114e6e08c0ff794ed6ab9"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/voice-rs/releases/download/v0.1.3/voice-orders-linux-amd64"
      sha256 "030b378fa24a4b9ea3f289a99f69d8f462c4df2d3bab99a351251c447a489978"
    end
  end

  def install
    bin.install Dir["*"][0] => "voice-orders"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voice-orders --version 2>&1 || true")
  end
end
