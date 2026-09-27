class VoiceOrdersAT0 < Formula
  desc "Native voice-based macros for Linux"
  homepage "http://voice-orders.sierrasoftworks.com/"
  version "0.2.1"
  license "MIT"
  keg_only :versioned_formula

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/voice-rs/releases/download/v0.2.1/voice-orders-linux-arm64"
      sha256 "48c5033173f282341a748ff7b079fa585dcded98a32eefc1ba053dd9367c095d"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/voice-rs/releases/download/v0.2.1/voice-orders-linux-amd64"
      sha256 "b2e1cf0e58439a895d8f2ba10dce0839cb428925e834dec14a816518fb119d5d"
    end
  end

  def install
    bin.install Dir["*"][0] => "voice-orders"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voice-orders --version 2>&1 || true")
  end
end
