class Buckle < Formula
  desc "Lightweight bootstrapping of servers, with amazing observability and"
  homepage "http://buckle.sierrasoftworks.com/"
  version "2.9.0"
  license "MIT"

  on_macos do
    on_arm do
      # tap:darwin-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.9.0/buckle-darwin-arm64"
      sha256 "6bf9a08b6c62696e8e0db2d494d498beab175978e9662e6ab6a2da2a4f384607"
    end
    on_intel do
      # tap:darwin-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.9.0/buckle-darwin-amd64"
      sha256 "62f4e2de7d38af3c491979f7f10d36c468c03e19d797d586954aa9402dd7063c"
    end
  end

  on_linux do
    on_arm do
      # tap:linux-arm64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.9.0/buckle-linux-arm64"
      sha256 "b98947560f9fea08e1525e02328e24b4ba544a041aa5d8ad891e1902248ad404"
    end
    on_intel do
      # tap:linux-amd64
      url "https://github.com/SierraSoftworks/buckle/releases/download/v2.9.0/buckle-linux-amd64"
      sha256 "ffebaa6af1e57e7a40ec4ceb7b1fdbf27af3422476719d68204117a6788b9417"
    end
  end

  def install
    bin.install Dir["*"][0] => "buckle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buckle --version 2>&1 || true")
  end
end
