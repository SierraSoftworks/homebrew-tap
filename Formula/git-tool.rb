class GitTool < Formula
  desc "Manage your Git repositories in a consistent folder structure"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.9.8"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.9.8/git-tool-darwin-arm64"
      sha256 "940495cad9d2a5ae9a3a044deb2d25f2b2b6bdb3b1950d2f6f8fc77dbd8c1d99"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.9.8/git-tool-darwin-amd64"
      sha256 "48f0b592614f7e7857110f2a6ba34327e78ce9d30b8af6e50f48359ea2039428"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.9.8/git-tool-linux-arm64"
      sha256 "8701b8f1170d304114d6ffd57f15e50eb25c2a73d89728c66477ef3211e4f839"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.9.8/git-tool-linux-amd64"
      sha256 "9de2df3df71770f166bf50fa5479e23005149eb31fd862d886d490184b573b93"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
