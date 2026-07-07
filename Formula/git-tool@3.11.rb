class GitToolAT311 < Formula
  desc "Stop worrying about where your code is saved and start being more productive"
  homepage "https://git-tool.sierrasoftworks.com"
  version "3.11.10"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.10/git-tool-darwin-arm64"
      sha256 "fc71b01ada961876594ed90434efd15375c2f0c4371010266998176a6136be5d"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.10/git-tool-darwin-amd64"
      sha256 "ff268be9c5421cae3761a80f2688461e86a836036f55cbf231a68c2460af2745"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.10/git-tool-linux-arm64"
      sha256 "4f380dee8fc9f8b354716ed34c36d92693ddd0730a05883ea8a109566b38cdb8"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/git-tool/releases/download/v3.11.10/git-tool-linux-amd64"
      sha256 "87bc4da6e2038d21ae48dbab0104a10c20e906e176cf1adaec6bcbbe8429e728"
    end
  end

  def install
    bin.install Dir["*"][0] => "git-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-tool --version 2>&1 || true")
  end
end
