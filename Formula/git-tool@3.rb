class GitToolAT3 < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.12"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.12/git-tool-darwin-arm64"
      sha256 "6b707001edb4ddc4a582a9c8621f0e6624f8745af7b3ef18eb456c8ec65b85e3"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.12/git-tool-darwin-amd64"
      sha256 "100d7b197b7559278561774178cf41c77db893a7a7472deb5db1cac7bb5fc541"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.12/git-tool-linux-arm64"
      sha256 "9d080e440bc7353f11ee1c99811c8ef8b041016f47e11fcf2e39f9316a9df3aa"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.12/git-tool-linux-amd64"
      sha256 "44f350f3176b1186a52f6c8006b18d03ce6badd962bf5db986065455a7156846"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
