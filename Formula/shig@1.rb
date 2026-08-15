class ShigAT1 < Formula
  desc "Cryptographically sign and verify files using SSH keys"
  homepage "https://github.com/SierraSoftworks/shig"
  version "1.1.3"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/shig/releases/download/v1.1.3/shig-darwin-arm64"
      sha256 "dc811dd394608fa6540a519e33f35656eaac3f0ee05eb1dd4cf6de5a7effc137"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/shig/releases/download/v1.1.3/shig-darwin-amd64"
      sha256 "afb1406d3eceb4a26c8b29ac7ac7fbf32e051ae93fd413d4f6e997eb84ae68b2"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/shig/releases/download/v1.1.3/shig-linux-arm64"
      sha256 "d645a243ca3289548d535c2ee4ca849aa04379365ba540eb011ec1ed76f25c27"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/shig/releases/download/v1.1.3/shig-linux-amd64"
      sha256 "42ab4cda209c5d4c6a2ae20dd1f78d62e2ff3e77146e9c9f20f9b8e158dddc88"
    end
  end

  def install
    bin.install Dir["*"][0] => "shig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shig --version 2>&1 || true")
  end
end
