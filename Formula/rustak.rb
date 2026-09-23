class Rustak < Formula
  desc "Single-binary TAK server for ATAK and CloudTAK, secure by default"
  homepage "https://github.com/SierraSoftworks/rustak"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.0/rustak-darwin-arm64"
      sha256 "c59f6a515ad4e92434d28793e4008f44724d82b06d1cfb8bbf8cbab348252d50"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.0/rustak-darwin-amd64"
      sha256 "132b7ac56d58202e6b9e4fefca93245fc4e470abfe56342316ac4858085816d3"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.0/rustak-linux-arm64"
      sha256 "aaf26e1ff875a2983cc3dd0aafc72b9e75278cae6b2bcf0095b8126ccf6ee1a7"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.0/rustak-linux-amd64"
      sha256 "65969d8a24571eca99db81cec9b74e5b3c95fbfe9beadda5e735eed1a90f3128"
    end
  end

  def install
    bin.install Dir["*"][0] => "rustak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustak --version 2>&1 || true")
  end
end
