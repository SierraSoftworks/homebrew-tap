class GitTool < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.19"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.19/git-tool-darwin-arm64"
      sha256 "bfb285e0b734ff68d9d646ffc18cfdba7107bc3139229c76f0af96de36866021"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.19/git-tool-darwin-amd64"
      sha256 "5eac353f3b274b31ec3ce0c2e59ff8cba61f072aae4f8b675dad75b3fc052f99"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.19/git-tool-linux-arm64"
      sha256 "9432edd702fff08723208cacb04a0d6b9e2d11bfed019889a6fd1f7e5d54053c"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.19/git-tool-linux-amd64"
      sha256 "509b0fc11ac23ee699110a920eb4dacd74ea3627b4f35911322a4fe01d9e6f9f"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
