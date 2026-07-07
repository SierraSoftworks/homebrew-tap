class GitTool < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.12"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.12/git-tool-darwin-arm64"
      sha256 "0aa7f4a71cb608f76173561ba7b2030ad4d0792a455725fb0ca9dbc675e8cf1b"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.12/git-tool-darwin-amd64"
      sha256 "34fcaffd3ef70544e26cfcbdb656037afe43d9c1708b3705e06fb603c332d7ca"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.12/git-tool-linux-arm64"
      sha256 "0597fe4471af50ca253aae4f8c1fa13102614277420b47b33f457e09db2b9abb"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.12/git-tool-linux-amd64"
      sha256 "9fe9b1d320746cb3769890247b223d0299a6df11a10dd5f00040a35b762b61f5"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
