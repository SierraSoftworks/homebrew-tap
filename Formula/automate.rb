class Automate < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.0.6"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.6/automate-darwin-arm64"
      sha256 "48f0e1db42641493a96ceafa7ea7155836a0a8f05e7fe64d91cc7906367c280e"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.6/automate-darwin-amd64"
      sha256 "f8b4dc8b5bb3a3829e8db524148b23d370ae70cb5320776fc896110d217bfc10"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.6/automate-linux-arm64"
      sha256 "6ccb5c0baf4fbcb50923f979e0e897373a52e0d9842cbc8322d845b5a5a14111"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.0.6/automate-linux-amd64"
      sha256 "52cc88d42858220264be0fd24f23ed5fb96f563bdcf9762526fc88706e585dde"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
