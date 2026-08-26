class GitTool < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.22"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.22/git-tool-darwin-arm64"
      sha256 "d59fcb3cb4e1c1e4da37db9b7a22b22b9b442a95433d4f06c2c9bec25574159e"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.22/git-tool-darwin-amd64"
      sha256 "1f0b9c7d8e5d21d9c818bada530979a21ce09feb605774f8cd32675d2285e08c"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.22/git-tool-linux-arm64"
      sha256 "7fa2911d720f3f3482ec919d4a686422cf8fae97b49568efc077ef8efa765002"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.22/git-tool-linux-amd64"
      sha256 "ba202f0934e8e91fe0745de2a53e2512cc1de3d77459904b0b9c32c205be1c5a"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
