class AutomateAT13 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "1.3.26"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.26/automate-darwin-arm64"
      sha256 "a9761c4f201b7f279cd8d6b4af438216f05c3ae25f7f99ea3e5719e5e1028e67"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.26/automate-darwin-amd64"
      sha256 "af3a6d33f0cc391f4ca055615e7345c15fda800158c318bc6a74e7327e5226d5"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.26/automate-linux-arm64"
      sha256 "13e7be49d044573b1043150667ed49d2f6fdd945c5d5f7eba0ddd8ea22076c78"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.26/automate-linux-amd64"
      sha256 "9a97263a506f271dd03b7f7c2b1dfcae28b6453f5930a2209d17b7efffd68960"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
