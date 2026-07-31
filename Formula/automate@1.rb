class AutomateAT1 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "1.3.27"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.27/automate-darwin-arm64"
      sha256 "85a126519cc3f6c52623bd925a4e79f699ded5d08fcfd06b280e45fc264b2931"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.27/automate-darwin-amd64"
      sha256 "867edf85f110e12597942344c0b33d6b48944b60aa6642f4f3a67629a4a89dd8"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.27/automate-linux-arm64"
      sha256 "ddc3e40d69deaeaf7c201997d14e5a47b812ca9a8990bdcf41b3c57332364fdf"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.27/automate-linux-amd64"
      sha256 "1110ec29491f447fcccbee6dc980a287cd0cabbe8017e0068b1545974ac09a07"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
