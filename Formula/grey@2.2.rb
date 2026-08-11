class GreyAT22 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.2.6"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.6/grey-darwin-arm64"
      sha256 "dd650047e9d63081553ef783643abb2a4f05cc65619af60fadc4c22c9522386c"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.6/grey-darwin-amd64"
      sha256 "6170d67c1a05a300db1329b3665b05ba8ba32b648d25daab37bca96662750fe8"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.6/grey-linux-arm64"
      sha256 "dbee94e51d9c1ce77dbf9ab5d54a4136c42c118a0d2692a3429af93fd3efb50a"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.6/grey-linux-amd64"
      sha256 "61eaa71dba73c778ff39e93bcd7f3a63a02b5f901c2c85a40edfe295d7bf37c5"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
