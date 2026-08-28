class VoiceOrdersAT01 < Formula
  desc "Native voice-based macros for Linux"
  homepage "http://voice-orders.sierrasoftworks.com/"
  version "0.1.1"
  license "MIT"
  keg_only :versioned_formula

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/voice-rs/releases/download/v0.1.1/voice-orders-linux-arm64"
      sha256 "454cfc762ffc7d0067960111c1ae251887b8a4c1fbd045c3a0a53aebc8fb97f6"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/voice-rs/releases/download/v0.1.1/voice-orders-linux-amd64"
      sha256 "99705a0cd7f7d41beed3c72b0ae08d9b08d8f2b188be901fc0457048b166d62f"
    end
  end

  def install
    bin.install Dir["*"][0] => "voice-orders"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voice-orders --version 2>&1 || true")
  end
end
