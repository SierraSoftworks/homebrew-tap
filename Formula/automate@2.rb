class AutomateAT2 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.0.4"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.4/automate-darwin-arm64"
      sha256 "8f348abbdd6c4f1c41d7a06c03eb5cdd6ad6c52fce7ba9e156134546ddf053ee"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.4/automate-darwin-amd64"
      sha256 "7bb346ac6890bfed04f2eea53502ca3793e9d36f28269c37043ff64859f5aaf6"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.4/automate-linux-arm64"
      sha256 "713a850e67662577e46a905fa5036ca3298119ae29073a4da8139f3f4f9adf5a"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.4/automate-linux-amd64"
      sha256 "bff5276701fbdec8f82adb4e1af2eff65f660b889bf44f09d401c7014f708421"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
