class AutomateAT20 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.0.1"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.1/automate-darwin-arm64"
      sha256 "339091e526fdca58537dc702e77c88e3753adff1c56bed430695c4c5d9d7ddb5"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.1/automate-darwin-amd64"
      sha256 "fcb0ae1e81d247f0d4568c881e4c841537a3823d390da390dc63d44834cb0177"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.1/automate-linux-arm64"
      sha256 "ef5d734ce5597bb52af21022fe02b892561aeedd2746c9ffd90adfb25e992f24"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.1/automate-linux-amd64"
      sha256 "99b80aa26316f338b6fa8612843be8b3404ca709f60969792cf60ef6b0791d4b"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
