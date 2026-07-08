class GitToolAT311 < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.13"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.13/git-tool-darwin-arm64"
      sha256 "9c1d3aed971bbb7671ef070b79490bcc8680c4cca5cdd9962011438d7dd9120c"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.13/git-tool-darwin-amd64"
      sha256 "69162624651a1453a77334f205ca6d6e67e96c5d0f677e767590f255199eb157"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.13/git-tool-linux-arm64"
      sha256 "466220cd874e165c91a58bb5f4f062b13d7e1ff82818aa525cd43546add2adff"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.13/git-tool-linux-amd64"
      sha256 "d2faf0cb013cbbc89adae26d649da42bbf105d456cb6cff6ba328009b69f5378"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
