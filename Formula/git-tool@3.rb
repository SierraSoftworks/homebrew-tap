class GitToolAT3 < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.14"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.14/git-tool-darwin-arm64"
      sha256 "39df60f3927126bd0b72f7ada706d2f8efd0e6c3675e1b3828cd25fe2cb5b60e"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.14/git-tool-darwin-amd64"
      sha256 "da383cf69b289f6c8092577e25cbaac2640e2ebdff93670cfa64b079984b52dd"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.14/git-tool-linux-arm64"
      sha256 "0f38701c5475d467927f58a2440aee0b49b762fcd7a7c4986c5c5d47492d67b1"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.14/git-tool-linux-amd64"
      sha256 "3635d75a68111d8b3d9c19e3ff87c77fcaad8312f9f305995129ee8d28dc721f"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
