class AutomateAT1 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "1.3.23"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.23/automate-darwin-arm64"
      sha256 "7f39a3b450d4380e70f9fa5c594222c77bb4d23593937edaa44bb7f1bbaf6c13"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.23/automate-darwin-amd64"
      sha256 "e64ea0818d8a59538bcf7e30369f23eb2ed1422ba3efd754b7afd69e0a1d0b41"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.23/automate-linux-arm64"
      sha256 "2100603c8f6253e56b0b2c81b9baea0ab1e019126a5fb64a4ef5f0439c38b24d"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.23/automate-linux-amd64"
      sha256 "76046b43b8fa210f7cfad95fb8155c1497f5173f1b7e48d1a8335a02ea4d19a8"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
