class RustakAT0 < Formula
  desc "Single-binary TAK server for ATAK and CloudTAK, secure by default"
  homepage "https://github.com/SierraSoftworks/rustak"
  version "0.1.1"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.1/rustak-darwin-arm64"
      sha256 "b3769c04ebdfaed5e82d92b840c07e707ecd336754f7b7fe8d706fe746f759a3"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.1/rustak-darwin-amd64"
      sha256 "d7c275b4fb012075e23788064edebe0a648bb813737eefffa6a9d91bd42abd11"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.1/rustak-linux-arm64"
      sha256 "d7cf565e2f22111cf002806725add92f03d3166e5c3b8b621b272c431a12fd8a"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/rustak/releases/download/v0.1.1/rustak-linux-amd64"
      sha256 "18ebb0918a1ee225663f549d7205e1321f5374d09ed21d931d010c26418f74bb"
    end
  end

  def install
    bin.install Dir["*"][0] => "rustak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustak --version 2>&1 || true")
  end
end
