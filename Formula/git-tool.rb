class GitTool < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.5"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.5/git-tool-darwin-arm64"
      sha256 "d0cdd17aa6519bbeb1029c67099368d74861e5550824a638a8e5c9b2c62dd8b2"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.5/git-tool-darwin-amd64"
      sha256 "2f450b9c4fadee33cfb904b1c71292fea24d85eaf3b436d913b217fb29ddb876"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.5/git-tool-linux-arm64"
      sha256 "c2e49d48a48847afaea25e73aeb3317fa562986fd940715eb355f50d9cc5f170"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.5/git-tool-linux-amd64"
      sha256 "8ca1bca9c6d6491729a72d23cd071190084e7e2272ee883f7bd79aa33dc7849d"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
