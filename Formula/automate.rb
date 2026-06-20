class Automate < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "1.3.14"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.14/automate-darwin-arm64"
      sha256 "5a8dd20a31ffd281cc88b11df599502132696223960af8b5067a2cde24028da7"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.14/automate-darwin-amd64"
      sha256 "0f078bd123aa500abaa6d3bd2f4ebeee68fd71fdac04b5a3fd8d35732f3dcb87"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.14/automate-linux-arm64"
      sha256 "1276b20368d79ea987dfea2956e032af80dfc77c8a3ed14e133952072cec8e7e"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.14/automate-linux-amd64"
      sha256 "a46d3bdf956a9ca25f915f266c9c2a4d43751fde33e6af99833f913e19a94d2a"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
