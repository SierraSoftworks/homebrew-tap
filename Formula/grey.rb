class Grey < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.2.0"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.0/grey-darwin-arm64"
      sha256 "b380b14b8578b1ef1fe579217c4d3f0910de89a002bcf853962a2e901fd770c3"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.0/grey-darwin-amd64"
      sha256 "8699e8f8d13ce10244b6029d609d416097a44834abf0d909712765662ffa5f9e"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.0/grey-linux-arm64"
      sha256 "02f602aeb46e49c774e260381214af8c4017cbca34222da7b49a55aaec670fa8"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.0/grey-linux-amd64"
      sha256 "7e11891ae99bf5ce5d144d31138a7124409ff44d5234df6d304c8fb4c229d97b"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
