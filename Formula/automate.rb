class Automate < Formula
  desc "Common manual tasks and use Todoist to request human involvement when necessary"
  homepage "https://github.com/SierraSoftworks/automate"
  version "2.1.9"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.9/automate-darwin-arm64"
      sha256 "445d7ce5b3880430b04372deba2eebac94be6cfc333d5975114a74036a9908ee"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.9/automate-darwin-amd64"
      sha256 "fd8657b66b805d3c689c145502ca9056c813a3a97da88922684f13da10cd10f8"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.9/automate-linux-arm64"
      sha256 "5491851abb5a3d027406f9df53906e5d4c8cbd2c6a95c8e254759f1014eb1ca8"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/automate/releases/download/v2.1.9/automate-linux-amd64"
      sha256 "973ea560cafb0bce785af26e5c06ccb8fcea3014c6ed638cc64adcc7273a9bff"
    end
  end

  def install
    bin.install Dir["*"][0] => "automate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/automate --version 2>&1 || true")
  end
end
