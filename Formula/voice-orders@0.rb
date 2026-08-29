class VoiceOrdersAT0 < Formula
  desc "Native voice-based macros for Linux"
  homepage "http://voice-orders.sierrasoftworks.com/"
  version "0.1.2"
  license "MIT"
  keg_only :versioned_formula

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/voice-rs/releases/download/v0.1.2/voice-orders-linux-arm64"
      sha256 "9bacace8fbec9bc30b4e19721a5d70662935d6768fc88cd68125b017287154f1"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/voice-rs/releases/download/v0.1.2/voice-orders-linux-amd64"
      sha256 "3139c7138cb87c7b07e7b7fbe9db6e5219f9fcb34be7709d28c2e0840f2e1704"
    end
  end

  def install
    bin.install Dir["*"][0] => "voice-orders"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voice-orders --version 2>&1 || true")
  end
end
