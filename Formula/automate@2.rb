class AutomateAT2 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.0.9"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.9/automate-darwin-arm64"
      sha256 "320e02767096abcd9bba0e8ed4b9fc7ef7586fee309cc97497d4d8725629a580"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.9/automate-darwin-amd64"
      sha256 "e82fbca44af703dc45f243ca3616f8ac429b9514c113e580dde62498dde2d667"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.9/automate-linux-arm64"
      sha256 "c5697c907acbd279436f537d5f275a1eeb4d965ecf2f5246b2d67dd2f91cffc6"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.9/automate-linux-amd64"
      sha256 "52f69cd7805ba811e5dec0ef9bd562453d75c545b6df7875251760c9667cc05a"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
