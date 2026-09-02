class AutomateAT2 < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.1.2"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.2/automate-darwin-arm64"
      sha256 "cd6d17c6c5eef6d81500ebe948ebc0208e387f19f3a279065a0ffef23fc214ad"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.2/automate-darwin-amd64"
      sha256 "a08a00a4e9319f331bc053e7882a15d79e5d5a0e230252fad3b92e3386f40cf1"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.2/automate-linux-arm64"
      sha256 "fa33a232e9c9bc1d4712e0251f0c7b87ad9d66b3f3f8c6285b6a9c06ac9f1b2f"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.2/automate-linux-amd64"
      sha256 "faa75dcd591306a40f1313d480bef6ced5aae04326cb8de7b6386142118a1eec"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
