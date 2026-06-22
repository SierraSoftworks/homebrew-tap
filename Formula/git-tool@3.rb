class GitToolAT3 < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.7"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.7/git-tool-darwin-arm64"
      sha256 "8bf9b76ca83714002e2738a09168ab272caeeb804e3e6521fd35526663d095ae"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.7/git-tool-darwin-amd64"
      sha256 "d91316e7a1a6ec8f3da39b8ac9a1a69e00d1cef260b650c2242c002a483513df"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.7/git-tool-linux-arm64"
      sha256 "fc8d5c8fb6175e32e38b322825472432cea65e22da97791148c04fa91cb6be14"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.7/git-tool-linux-amd64"
      sha256 "f5615f207ca1d996e45ff311b1cb10f70fa1c81652e34c21c13060c0cc1fa804"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
