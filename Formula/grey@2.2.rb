class GreyAT22 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.2.2"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.2/grey-darwin-arm64"
      sha256 "e5fa1e05940bd6fd917fe13ebb45afc9ae3130ceb5c728f98382d3162ee71335"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.2/grey-darwin-amd64"
      sha256 "a451cb0a1d337fdc546cf2c4d1c174f513854c976b40872cd47778f0f36b51d7"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.2/grey-linux-arm64"
      sha256 "eadda95d59dcdadad8cd8b98c5da9f3c038c159ab04ac9f374503eca12317088"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.2.2/grey-linux-amd64"
      sha256 "55855cfc7afaa4549fc970653e389178b96e4d292ab67618cbe55bfaf4549535"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
