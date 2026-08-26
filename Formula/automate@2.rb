class AutomateAT2 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.1.1"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.1/automate-darwin-arm64"
      sha256 "c9d5c707999fdb1bab7d0317015ea8b1859eaa0cac69efc751ec943f07a0f789"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.1/automate-darwin-amd64"
      sha256 "22d5e22c8c17cef86fd608791e0dbdfe86e96398125158f35bffcd2ebeef8db3"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.1/automate-linux-arm64"
      sha256 "8b26c354f2ca30246987e66d2e45e33bed1573cd59a7d1720245a9935363281d"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.1/automate-linux-amd64"
      sha256 "329892a80da28ffbab30e13b5aa5f651a8df49f67b19b498495455ca2c23d581"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
