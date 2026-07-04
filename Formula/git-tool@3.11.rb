class GitToolAT311 < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.8"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.8/git-tool-darwin-arm64"
      sha256 "ccdf6d07a4f5bb65fa441d8589d7cb6a536a507074803b1e4dcd6d3399aabae9"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.8/git-tool-darwin-amd64"
      sha256 "b6ef2e58a7deba879a29c1e0904e31f07ed6dbbc099a57d648d765620061f965"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.8/git-tool-linux-arm64"
      sha256 "a715323701a24001631567c60c5e2817daaa1864bb60155e6a06fc3000a663de"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.8/git-tool-linux-amd64"
      sha256 "9578cde913b3732d59e90716fe70849b2bebbb083f0f781fb5f352cc6e743520"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
