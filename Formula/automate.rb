class Automate < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.1.4"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.4/automate-darwin-arm64"
      sha256 "2fdbd9bf62820428ded74d960b79cac3cb723f3a3e159756dc7cfa7896be4a39"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.4/automate-darwin-amd64"
      sha256 "a590d88c61565e63af346ff1dfbcc92c452cf52a866f3b3ddff0a4d6fe064de0"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.4/automate-linux-arm64"
      sha256 "a7365610b7bcb04fa6d57c846eb20b848b6168097c3bd5cb949c1dce2a292d1f"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.4/automate-linux-amd64"
      sha256 "92c1cb887fcaa360c3e5895f7ef1b95130ea2d6afd44b7f1c7092dea089a672a"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
