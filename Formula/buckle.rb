class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "https://github.com/SierraSoftworks/buckle"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.1.0/buckle-darwin-arm64"
      sha256 "2c80fd9c05da68921ab4287e7814852b6bb9f45781726b9c3cf8f758fc44b0f5"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.1.0/buckle-darwin-amd64"
      sha256 "a68682f3b91b37850069190147f4e808519d7adb0c1123695f9800e14414fd3d"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.1.0/buckle-linux-arm64"
      sha256 "53d677df9feacc353f99bada8e8fc4a5f3cf8177385334319eb68845ff7cfe6b"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.1.0/buckle-linux-amd64"
      sha256 "a211d61706b659e361d404387d454a83113aa1a021f405d76813f56afd19f41b"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
