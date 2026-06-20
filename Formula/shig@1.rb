class ShigAT1 < Formula
  desc "Cryptographically sign and verify files using SSH keys"
  homepage "https://github.com/SierraSoftworks/shig"
  version "1.1.2"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/shig/releases/download/v1.1.2/shig-darwin-arm64"
      sha256 "ecbcea24ee283d2926b2046af8fa4969307f7cbe9520995e6cdabae85f370577"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/shig/releases/download/v1.1.2/shig-darwin-amd64"
      sha256 "57054a9c3d5dea5b5ce94ba28b5ff61d21d3d2a8443cc06280c1c157c8a3d96f"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/shig/releases/download/v1.1.2/shig-linux-arm64"
      sha256 "aa04e384493ac63556b7c36453a209c7395f8a01331b44fffc100c25294389b6"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/shig/releases/download/v1.1.2/shig-linux-amd64"
      sha256 "ddfa1aff3ef19a73e385b44ca3503450be4521ca899f630a33d2fd361687cabb"
    end
  end

  def install
    bin.install Dir["*"][0] => "shig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shig --version 2>&1 || true")
  end
end
