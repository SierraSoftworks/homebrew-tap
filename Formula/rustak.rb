class Rustak < Formula
  desc "Single-binary TAK server for ATAK and CloudTAK, secure by default"
  homepage "https://github.com/SierraSoftworks/rustak"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.4/rustak-darwin-arm64"
      sha256 "8276974ab6783f42c010899cd3a90b68fd4dd64290eaf9973610d96b7e8617f1"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.4/rustak-darwin-amd64"
      sha256 "a080898ad5bfe690b3a7b15af3454654242276d9bd921c9653da433f06026c4a"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.4/rustak-linux-arm64"
      sha256 "8e54bd4240d7076abd8966a12eb42e7b4040d1d7045a08aa9ffc2d07348298af"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.4/rustak-linux-amd64"
      sha256 "dccb4f3d5d167ccbc9824e572802651dd914da0723590bf89cb8e7331d5f6cd2"
    end
  end

  def install
    bin.install Dir["*"][0] => "rustak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustak --version 2>&1 || true")
  end
end
