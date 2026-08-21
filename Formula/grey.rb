class Grey < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.2.9"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.9/grey-darwin-arm64"
      sha256 "02a1a887cf29f491012954a7915b183d3292e6dc26ac31b82323ee0aac50e90c"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.9/grey-darwin-amd64"
      sha256 "0b2389a00fc6896956df46bc26d929128f47fe53a53dec71dc133cc2e448cc8f"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.9/grey-linux-arm64"
      sha256 "a1a0484520541f683181c3d35737fdc671fa70e6f8bdadb911622b1cd579cfe1"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.9/grey-linux-amd64"
      sha256 "d6dae3b754a41f8830c2d3190ccad3179601ce94594733775bc06d00d2976e49"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
