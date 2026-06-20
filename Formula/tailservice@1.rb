class TailserviceAT1 < Formula
  desc "Easily expose services on your Tailscale network under their own DNS names"
  homepage "https://sierrasoftworks.com/projects/tailservice/"
  version "1.1.7"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/tailservice/releases/download/v1.1.7/tailservice-darwin-arm64"
      sha256 "2c1c0073c9115207fe11fae8dfcb4ad36beeca8e5976d42d097d9ecf2d8ffa79"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/tailservice/releases/download/v1.1.7/tailservice-darwin-amd64"
      sha256 "2e092075bc0bbc8c7735c03705fdc58442d8654001b3e3fb81c52fd0ac495c9f"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/tailservice/releases/download/v1.1.7/tailservice-linux-arm64"
      sha256 "167e2afb4207ac532824239da8d0092e592a191f404f9cb621928480bff0a02c"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/tailservice/releases/download/v1.1.7/tailservice-linux-amd64"
      sha256 "fff0e6afc7b798a4d1d8d248888acdcf125169fc97cc79a7b4c70ec887a03659"
    end
  end

  def install
    bin.install Dir["*"][0] => "tailservice"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tailservice --version 2>&1 || true")
  end
end
