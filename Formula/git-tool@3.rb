class GitToolAT3 < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.22"
  license "MIT"
  keg_only :versioned_formula

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
