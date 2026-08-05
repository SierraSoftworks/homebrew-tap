class AutomateAT20 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.0.0"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.0/automate-darwin-arm64"
      sha256 "85f4bcb01ad6dc5df478468d58edbf3e9856de0ac7d87c160da80926f10e14ea"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.0/automate-darwin-amd64"
      sha256 "c7e25338d16a1a94e34f67ca78a9219723151a30fe9c870f5341e149a40944bd"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.0/automate-linux-arm64"
      sha256 "9f8c8eef5910278c5c4ab177d93ec305fa3bdf7628012fa7d53f7a4c14ed740b"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.0/automate-linux-amd64"
      sha256 "6faa646b2d252c7c39806ebfaa12bd1616c9582a0bfa7d70226504ac47366add"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
