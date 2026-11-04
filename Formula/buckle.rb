class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.4.0"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.4.0/buckle-darwin-arm64"
      sha256 "bcfda7615d35a57409c6034f3231ced3dc6426089e576c8220d7683af74141af"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.4.0/buckle-darwin-amd64"
      sha256 "201d939c75699f55640639722341305ec0ae19d7aed5527d18fa80b82d91369c"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.4.0/buckle-linux-arm64"
      sha256 "891e065d554e30dc19cdb9a9c17bc0c6683fceb0c9abc38a1d79c90592bbd8a0"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.4.0/buckle-linux-amd64"
      sha256 "d48d088e6298f5fe5d28906288508c9f400e91f1b232e1483e0fa44ad34c7025"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
