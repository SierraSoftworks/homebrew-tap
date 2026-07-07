class GitTool < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.11"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.11/git-tool-darwin-arm64"
      sha256 "8fe3d5fcf48389544e22dc620e3303460b1926a9369183adb90304100be82a27"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.11/git-tool-darwin-amd64"
      sha256 "cfe696b68af6843310a20fc582bf1a9ae8499a88f3e9013d4417639306b051d3"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.11/git-tool-linux-arm64"
      sha256 "24f8d72bdd4d310c4034ee3fa42ff11af80358c78bb36c8d2fb269466afb7c01"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.11/git-tool-linux-amd64"
      sha256 "c15faf583ca2782eecec31b23d0f14095135b1ddf66aef0e4f16752395c3e85d"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
