class AutomateAT2 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.1.10"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.10/automate-darwin-arm64"
      sha256 "c33e9942c69148d0637a331ab08acefd7dbedd72ff36b016edbcbd9db4310b89"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.10/automate-darwin-amd64"
      sha256 "b81d585b34c03c5cb0bd92d4ef8c8c4a9baa5c9f855a2314923b0f8e5727de7f"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.10/automate-linux-arm64"
      sha256 "1f5f343239ae3cda755e6ad50dbd6ed171e2b764244d95e491b6f34df04e3255"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.10/automate-linux-amd64"
      sha256 "6f033068804664562995ecda869a450ffe8440cd749fb73b3ae050bbd704b7ac"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
