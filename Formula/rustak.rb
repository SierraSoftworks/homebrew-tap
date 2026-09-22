class Rustak < Formula
  desc "Single-binary TAK server for ATAK and CloudTAK, secure by default"
  homepage "https://github.com/SierraSoftworks/rustak"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.0.4/rustak-darwin-arm64"
      sha256 "189fae7075fd2c96854c5c2898331a74e35b91ab1fa0602643fa5c8e38b00957"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.0.4/rustak-darwin-amd64"
      sha256 "77633c9262bb84a5188f690d16cc1de03e291bcf05497cb8bf79fdd9433fa2e7"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.0.4/rustak-linux-arm64"
      sha256 "47bb0ab1af2ca325bef298e672c9e8f33b90de9a9d2051bd16c5b312ecfab285"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.0.4/rustak-linux-amd64"
      sha256 "e2a351f27b3be951613c5d769bb49fd54f19f3520c9919820d85d2788ea74583"
    end
  end

  def install
    bin.install Dir["*"][0] => "rustak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustak --version 2>&1 || true")
  end
end
