class Grey < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.0.7"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.7/grey-darwin-arm64"
      sha256 "2b389b396af634a0da93fb0870b049238e8b9cda6d881d24b65505c409838c86"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.7/grey-darwin-amd64"
      sha256 "f7d00c8bebca57901e7a088b4a1970a7be50490cec2ea7c662adf7438ff9e04f"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.7/grey-linux-arm64"
      sha256 "002c7b39e3148b807d3f72eb0973dd89193875afb2b13326ab22f43b11d05a1e"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.7/grey-linux-amd64"
      sha256 "2016e32663dc4e01d1123f459bc173bb0fa2af207c45a1340eed0d0b8827067c"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
