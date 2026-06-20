class Hue < Formula
  desc "Control your Philips Hue lights from your command-line"
  homepage "https://github.com/SierraSoftworks/hue"
  version "1.0.0"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/hue/releases/download/v1.0.0/hue-darwin-arm64"
      sha256 "036ca966345d042871953c2837b56cd1b31a514d27677168a360b215aadd95df"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/hue/releases/download/v1.0.0/hue-darwin-amd64"
      sha256 "290d2f8fc17a33c7e49117d8cdbf8041c8d4377c6236042a89f750e68a68517e"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/hue/releases/download/v1.0.0/hue-linux-arm64"
      sha256 "131182bb25cd0d244970463ec304840b8b92ee7c8f4e366672b1d99cb5f39b7c"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/hue/releases/download/v1.0.0/hue-linux-amd64"
      sha256 "87a535d0d01debda34efc25d37f894b3f9c5214cc93ee5c04fe694ca3c8a40a2"
    end
  end

  def install
    bin.install Dir["*"][0] => "hue"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hue --version 2>&1 || true")
  end
end
