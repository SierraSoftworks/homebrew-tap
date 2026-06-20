class Tailon < Formula
  desc "Easily manage and monitor applications on your machine via Tailscale"
  homepage "https://github.com/SierraSoftworks/tailon"
  version "1.1.5"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/tailon/releases/download/v1.1.5/tailon-darwin-arm64"
      sha256 "1745871298034def2027755b603499337a61b4fd281454dabc90a783251d1ab9"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/tailon/releases/download/v1.1.5/tailon-darwin-amd64"
      sha256 "d95df2bbf7a985d30ff5329cc154eeadfbce6bce80f8f0756a54535689ec67f7"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/tailon/releases/download/v1.1.5/tailon-linux-arm64"
      sha256 "374f8a4be23326e9ffc325b34cfc5b77655c1de1ed09db393aa079b00c4db121"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/tailon/releases/download/v1.1.5/tailon-linux-amd64"
      sha256 "8fe2e0984156846aa10d422561e3d0878fad8405ca9cecf1bca1dffa763e904f"
    end
  end

  def install
    bin.install Dir["*"][0] => "tailon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tailon --version 2>&1 || true")
  end
end
