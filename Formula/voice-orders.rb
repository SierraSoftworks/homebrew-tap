class VoiceOrders < Formula
  desc "Native voice-based macros for Linux"
  homepage "http://voice-orders.sierrasoftworks.com/"
  version "0.2.0"
  license "MIT"

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/voice-rs/releases/download/v0.2.0/voice-orders-linux-arm64"
      sha256 "3afc2731a4d74b11d1016db481c5f05d8af2d405369d1cdb2ca5828806643466"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/voice-rs/releases/download/v0.2.0/voice-orders-linux-amd64"
      sha256 "212acc781a4c0cbcbfc82e4ad114c25efdb4ac8929afebaba283e86fef713f6d"
    end
  end

  def install
    bin.install Dir["*"][0] => "voice-orders"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voice-orders --version 2>&1 || true")
  end
end
