class AutomateAT21 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.1.6"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.6/automate-darwin-arm64"
      sha256 "adda7a0589535f94e9a80e21de57d3c2b87c638763e556a2019b33b7da64dd12"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.6/automate-darwin-amd64"
      sha256 "2834daf3fe67f9bfbe851716bf891092a39b49b1a71978c25afbc0b198eb2cbd"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.6/automate-linux-arm64"
      sha256 "91c95863976ae2292e79a0bfd02d2670927a3f7adfc12effab10009ee1a491c5"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.6/automate-linux-amd64"
      sha256 "b2bdfff79459818ce965e4f2ce1bc9bcd928c8515700d8adafe898e52a0b6ce8"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
