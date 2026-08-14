class GreyAT2 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.2.7"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.7/grey-darwin-arm64"
      sha256 "a02af6f27ff286ac8aabd963bea83327fa440435584983da7d592720a2fa1563"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.7/grey-darwin-amd64"
      sha256 "c95bc5a768a3649a7df698f2874b08b6dee97f1453bcfc8e4b55649958031f0c"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.7/grey-linux-arm64"
      sha256 "29a38fc9fe41063ad97c92cb382261029619ae638f4ab2a587b0dda776da7514"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.7/grey-linux-amd64"
      sha256 "eeec1c533d8db9c0cad174b4ee9f2a3245635c1e4d0bf3d2fad4d4f850a63431"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
