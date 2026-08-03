class Automate < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "1.4.0"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.4.0/automate-darwin-arm64"
      sha256 "f9da837a02ceaf573d4c59223e12a530d47e9b1d381746fc4a6298261441010e"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.4.0/automate-darwin-amd64"
      sha256 "2f60befa287cb26a0e547c6778ab17c1359ee256e15086d241873ebeabf47612"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.4.0/automate-linux-arm64"
      sha256 "a39292cf8fddbd5b48a0e469b52411a9ddaf790229479c3023d41169e1d2d1c6"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.4.0/automate-linux-amd64"
      sha256 "fe89ffcf928314a1d66013d16ce824ad63638ca894f85541a9f8bb55a867b532"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
