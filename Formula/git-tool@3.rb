class GitToolAT3 < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.16"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.16/git-tool-darwin-arm64"
      sha256 "43e6475999267f59aec90a81de132b89e152914425ac9f0293b3042f4bd9cd7c"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.16/git-tool-darwin-amd64"
      sha256 "6fc4ffb945c07acba15ba007f1df9ea43357523bcb4510b3642eca7e316eb0b7"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.16/git-tool-linux-arm64"
      sha256 "3c30984bcbdef0c3ac391d310984ee410ebff8c259055658f2ec38419e57a507"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.16/git-tool-linux-amd64"
      sha256 "f93c0d64b0584ebc16ba1f5b183a96b6370313b29e23d8d774b9eb766263c2e6"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
