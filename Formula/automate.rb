class Automate < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "1.3.18"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.18/automate-darwin-arm64"
      sha256 "32846720b151ff281363d94c3675ea1a22f9674c969169819184c89ee62d3370"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.18/automate-darwin-amd64"
      sha256 "0dae1661506930dabc62ad9492c1d4a9eda86d8d732d0c06b0a56b6fff0c23e6"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.18/automate-linux-arm64"
      sha256 "7acf662c61fec3efb1203641c1d1aa870d3db751e0b76ef326a1c283196d94ee"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.18/automate-linux-amd64"
      sha256 "c7ecebc1125dd41855e55bb40636834d955f1be2cae986ea063805da7a3b4c58"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
