class GitToolAT311 < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.6"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.6/git-tool-darwin-arm64"
      sha256 "eab31e10c7bdda99c3f63ad5f8b0953eb2dae57239cd9e14a4afbb6970331470"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.6/git-tool-darwin-amd64"
      sha256 "f3b971418e807080323947b6726fa2e608236485a3cd221b2342f262b396c812"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.6/git-tool-linux-arm64"
      sha256 "e1a3ae862c7787fedd45f91cc64f6770d44e8cf5740810a7c10d2de2b7447d79"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.6/git-tool-linux-amd64"
      sha256 "7f6239247c7c7bd7919ca40440ecedbe8fe83f42eb3af6a2c29cd9079fed3ebf"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
