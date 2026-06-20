class GreyAT2 < Formula
  desc "Lightweight OpenTelemetry native health probing system"
  homepage "https://grey.sierrasoftworks.com"
  version "2.0.3"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.3/grey-darwin-arm64"
      sha256 "4d210f490e6911abe0bcf07ce0b50ce6269be20e0d94ed3e4adf53fabf6d3e0a"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.3/grey-darwin-amd64"
      sha256 "e3691a1d77c7f82a2191ce5ad533b94914224295f3ce781e9ce6eefd7ad17f16"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.3/grey-linux-arm64"
      sha256 "c9b84393d3e3958fccaf2618aa7543dee20e8af22caab780788d144e1a958f3e"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/grey/releases/download/v2.0.3/grey-linux-amd64"
      sha256 "e32a6fe03468922499e7a4f8472c69c36fe781498f9d1eb74ff6e7646b92d9fc"
    end
  end

  def install
    bin.install Dir["*"][0] => "grey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grey --version 2>&1 || true")
  end
end
