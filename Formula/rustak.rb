class Rustak < Formula
  desc "Single-binary TAK server for ATAK and CloudTAK, secure by default"
  homepage "https://github.com/SierraSoftworks/rustak"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.6/rustak-darwin-arm64"
      sha256 "8e05a3a325590dc2753aaae6cd34d56b3b65bb5f991d26830a888a07609f935c"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.6/rustak-darwin-amd64"
      sha256 "4b9528e65197cdb05a073252afd1b120dd41b09387340b7cf817937c906f12a3"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.6/rustak-linux-arm64"
      sha256 "71f04e0de584f03b4555279ba92e27d355b6e3e6b4656ac8c15b4247ee698e4c"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.6/rustak-linux-amd64"
      sha256 "ad806eee7e9037df0b56a0db202d08e87ccb982299668187133f8b1f8672fbc0"
    end
  end

  def install
    bin.install Dir["*"][0] => "rustak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustak --version 2>&1 || true")
  end
end
