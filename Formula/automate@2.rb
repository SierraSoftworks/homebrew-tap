class AutomateAT2 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.1.0"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.0/automate-darwin-arm64"
      sha256 "98ebcc399cf1bbf448f231e9121551cf8dc26d178b278f6b55fc148d6b242549"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.0/automate-darwin-amd64"
      sha256 "7d205af20bd97a262479176e06ad3834883fd8f565ac4fa3edc9af483fc2392b"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.0/automate-linux-arm64"
      sha256 "8609d88a617a8fc9c2890c6c2eb6f36fceb7f7c016f4d708f0b4fc1b163db74a"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.0/automate-linux-amd64"
      sha256 "5abfb9ecc7a982dddfbb0fd2243c488d51b2f52ac7dd6fa124aee403e962edc3"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
