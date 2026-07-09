class AutomateAT1 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "1.3.22"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.22/automate-darwin-arm64"
      sha256 "5038f43b67836404c0a37ce1c567b7a967cf98b608d01aa50f2b53504c706c7d"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.22/automate-darwin-amd64"
      sha256 "44fc7570298a9db7410f9f35f0bbf61cdafd56f6f020d1b67ec1d5f51fd3f2f3"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.22/automate-linux-arm64"
      sha256 "792189c94f6680b486d38acefda86bf6ecc02852f713c317bca63ef1cbbfb9de"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.22/automate-linux-amd64"
      sha256 "43138f682dff21f9fd724e5aeb18d842d68d6f644e67e73551cde3abd426ebaa"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
