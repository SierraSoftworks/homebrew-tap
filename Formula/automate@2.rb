class AutomateAT2 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.1.8"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.8/automate-darwin-arm64"
      sha256 "3d816ad0d9a52d7de509436b860746cc6745b971b023be4ca4cc0b0120020f43"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.8/automate-darwin-amd64"
      sha256 "855e6e78c6858d880b4996b9fecbe06b2f3c2de0804db14d61929e8f43aff3bf"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.8/automate-linux-arm64"
      sha256 "32a5e5d915e69a144d6717ae34770e000a48e2d29556a00ee6e507173adefd0c"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.8/automate-linux-amd64"
      sha256 "792ec5d3c839dfc55b165ad08bbbe74f1df14df7b85f219e0467f23f954d2257"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
