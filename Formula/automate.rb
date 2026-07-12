class Automate < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "1.3.25"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.25/automate-darwin-arm64"
      sha256 "9c2148df5b87ce744ea7b3c5e1c4b1dfdd255b78260de9b8b720b4f21358672a"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.25/automate-darwin-amd64"
      sha256 "84bd2bae338b1c2f3e43f951e062d0a8666e8212578ee2e1ed9e1ee7895b39d4"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.25/automate-linux-arm64"
      sha256 "3956fae9631505d2de8b43a45ce326fed096f6e10263167f76e7110a94d74538"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v1.3.25/automate-linux-amd64"
      sha256 "d6e340ab29761ab9db3e1831543267f40ee58f61b67f28c6a8cd36afafd778cb"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
