class GitToolAT3 < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.15"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.15/git-tool-darwin-arm64"
      sha256 "ff041d96b9a0f36bb206288d0c2ecdd6ff1ca739bb5067da8014da73e7d5b08b"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.15/git-tool-darwin-amd64"
      sha256 "bb4a3054503b72d8c4c4b0f187fb572d794ff47dc84f49d9ff4c9984a3e1382d"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.15/git-tool-linux-arm64"
      sha256 "5557c7567e3bcdec4eb9113241e550ce32c535b2e4651fd61b25f585a41c1110"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.15/git-tool-linux-amd64"
      sha256 "201132494a2555864eb1d6c56a154897a05dfeb4f9d31a765015f23a9e6e152f"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
