class GitToolAT311 < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.18"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.18/git-tool-darwin-arm64"
      sha256 "b1f89681fbc998a6a4e5209bc08c19cb2f4168f4c3649e20e6e70dfb7ab32589"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.18/git-tool-darwin-amd64"
      sha256 "525305bd819d6e412a2395b88c1daadfdb3d3688cf479fdb5e0767c2dfe4e165"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.18/git-tool-linux-arm64"
      sha256 "6253230d831ef7ae2487d6c1e9646e4e4a46610416b10258608aef72292d7609"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.18/git-tool-linux-amd64"
      sha256 "0b738819db29af1cdf58b9d87ee66e47a4f271b6d34c19c35fa4d1de2b9cf649"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
